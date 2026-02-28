import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_args.dart';

/// Manages a trust relationship between two Active Directory Directories.
///
/// The directories may either be both AWS Managed Microsoft AD domains or an AWS Managed Microsoft AD domain and a self-managed Active Directory Domain.
///
/// The Trust relationship must be configured on both sides of the relationship.
/// If a Trust has only been created on one side, it will be in the state `VerifyFailed`.
/// Once the second Trust is created, the first will update to the correct state.
///
/// ## Example Usage
///
/// ### Two-Way Trust
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const oneDirectory = new aws.directoryservice.Directory("one", {
///     name: "one.example.com",
///     type: "MicrosoftAD",
/// });
/// const twoDirectory = new aws.directoryservice.Directory("two", {
///     name: "two.example.com",
///     type: "MicrosoftAD",
/// });
/// const one = new aws.directoryservice.Trust("one", {
///     directoryId: oneDirectory.id,
///     remoteDomainName: twoDirectory.name,
///     trustDirection: "Two-Way",
///     trustPassword: "Some0therPassword",
///     conditionalForwarderIpAddrs: twoDirectory.dnsIpAddresses,
/// });
/// const two = new aws.directoryservice.Trust("two", {
///     directoryId: twoDirectory.id,
///     remoteDomainName: oneDirectory.name,
///     trustDirection: "Two-Way",
///     trustPassword: "Some0therPassword",
///     conditionalForwarderIpAddrs: oneDirectory.dnsIpAddresses,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// one_directory = aws.directoryservice.Directory("one",
///     name="one.example.com",
///     type="MicrosoftAD")
/// two_directory = aws.directoryservice.Directory("two",
///     name="two.example.com",
///     type="MicrosoftAD")
/// one = aws.directoryservice.Trust("one",
///     directory_id=one_directory.id,
///     remote_domain_name=two_directory.name,
///     trust_direction="Two-Way",
///     trust_password="Some0therPassword",
///     conditional_forwarder_ip_addrs=two_directory.dns_ip_addresses)
/// two = aws.directoryservice.Trust("two",
///     directory_id=two_directory.id,
///     remote_domain_name=one_directory.name,
///     trust_direction="Two-Way",
///     trust_password="Some0therPassword",
///     conditional_forwarder_ip_addrs=one_directory.dns_ip_addresses)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oneDirectory = new Aws.DirectoryService.Directory("one", new()
///     {
///         Name = "one.example.com",
///         Type = "MicrosoftAD",
///     });
///
///     var twoDirectory = new Aws.DirectoryService.Directory("two", new()
///     {
///         Name = "two.example.com",
///         Type = "MicrosoftAD",
///     });
///
///     var one = new Aws.DirectoryService.Trust("one", new()
///     {
///         DirectoryId = oneDirectory.Id,
///         RemoteDomainName = twoDirectory.Name,
///         TrustDirection = "Two-Way",
///         TrustPassword = "Some0therPassword",
///         ConditionalForwarderIpAddrs = twoDirectory.DnsIpAddresses,
///     });
///
///     var two = new Aws.DirectoryService.Trust("two", new()
///     {
///         DirectoryId = twoDirectory.Id,
///         RemoteDomainName = oneDirectory.Name,
///         TrustDirection = "Two-Way",
///         TrustPassword = "Some0therPassword",
///         ConditionalForwarderIpAddrs = oneDirectory.DnsIpAddresses,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		oneDirectory, err := directoryservice.NewDirectory(ctx, "one", &directoryservice.DirectoryArgs{
/// 			Name: pulumi.String("one.example.com"),
/// 			Type: pulumi.String("MicrosoftAD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		twoDirectory, err := directoryservice.NewDirectory(ctx, "two", &directoryservice.DirectoryArgs{
/// 			Name: pulumi.String("two.example.com"),
/// 			Type: pulumi.String("MicrosoftAD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewTrust(ctx, "one", &directoryservice.TrustArgs{
/// 			DirectoryId:                 oneDirectory.ID(),
/// 			RemoteDomainName:            twoDirectory.Name,
/// 			TrustDirection:              pulumi.String("Two-Way"),
/// 			TrustPassword:               pulumi.String("Some0therPassword"),
/// 			ConditionalForwarderIpAddrs: twoDirectory.DnsIpAddresses,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewTrust(ctx, "two", &directoryservice.TrustArgs{
/// 			DirectoryId:                 twoDirectory.ID(),
/// 			RemoteDomainName:            oneDirectory.Name,
/// 			TrustDirection:              pulumi.String("Two-Way"),
/// 			TrustPassword:               pulumi.String("Some0therPassword"),
/// 			ConditionalForwarderIpAddrs: oneDirectory.DnsIpAddresses,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.Trust;
/// import com.pulumi.aws.directoryservice.TrustArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var oneDirectory = new Directory("oneDirectory", DirectoryArgs.builder()
///             .name("one.example.com")
///             .type("MicrosoftAD")
///             .build());
///
///         var twoDirectory = new Directory("twoDirectory", DirectoryArgs.builder()
///             .name("two.example.com")
///             .type("MicrosoftAD")
///             .build());
///
///         var one = new Trust("one", TrustArgs.builder()
///             .directoryId(oneDirectory.id())
///             .remoteDomainName(twoDirectory.name())
///             .trustDirection("Two-Way")
///             .trustPassword("Some0therPassword")
///             .conditionalForwarderIpAddrs(twoDirectory.dnsIpAddresses())
///             .build());
///
///         var two = new Trust("two", TrustArgs.builder()
///             .directoryId(twoDirectory.id())
///             .remoteDomainName(oneDirectory.name())
///             .trustDirection("Two-Way")
///             .trustPassword("Some0therPassword")
///             .conditionalForwarderIpAddrs(oneDirectory.dnsIpAddresses())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   one:
///     type: aws:directoryservice:Trust
///     properties:
///       directoryId: ${oneDirectory.id}
///       remoteDomainName: ${twoDirectory.name}
///       trustDirection: Two-Way
///       trustPassword: Some0therPassword
///       conditionalForwarderIpAddrs: ${twoDirectory.dnsIpAddresses}
///   two:
///     type: aws:directoryservice:Trust
///     properties:
///       directoryId: ${twoDirectory.id}
///       remoteDomainName: ${oneDirectory.name}
///       trustDirection: Two-Way
///       trustPassword: Some0therPassword
///       conditionalForwarderIpAddrs: ${oneDirectory.dnsIpAddresses}
///   oneDirectory:
///     type: aws:directoryservice:Directory
///     name: one
///     properties:
///       name: one.example.com
///       type: MicrosoftAD
///   twoDirectory:
///     type: aws:directoryservice:Directory
///     name: two
///     properties:
///       name: two.example.com
///       type: MicrosoftAD
/// ```
///
///
/// ### One-Way Trust
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const oneDirectory = new aws.directoryservice.Directory("one", {
///     name: "one.example.com",
///     type: "MicrosoftAD",
/// });
/// const twoDirectory = new aws.directoryservice.Directory("two", {
///     name: "two.example.com",
///     type: "MicrosoftAD",
/// });
/// const one = new aws.directoryservice.Trust("one", {
///     directoryId: oneDirectory.id,
///     remoteDomainName: twoDirectory.name,
///     trustDirection: "One-Way: Incoming",
///     trustPassword: "Some0therPassword",
///     conditionalForwarderIpAddrs: twoDirectory.dnsIpAddresses,
/// });
/// const two = new aws.directoryservice.Trust("two", {
///     directoryId: twoDirectory.id,
///     remoteDomainName: oneDirectory.name,
///     trustDirection: "One-Way: Outgoing",
///     trustPassword: "Some0therPassword",
///     conditionalForwarderIpAddrs: oneDirectory.dnsIpAddresses,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// one_directory = aws.directoryservice.Directory("one",
///     name="one.example.com",
///     type="MicrosoftAD")
/// two_directory = aws.directoryservice.Directory("two",
///     name="two.example.com",
///     type="MicrosoftAD")
/// one = aws.directoryservice.Trust("one",
///     directory_id=one_directory.id,
///     remote_domain_name=two_directory.name,
///     trust_direction="One-Way: Incoming",
///     trust_password="Some0therPassword",
///     conditional_forwarder_ip_addrs=two_directory.dns_ip_addresses)
/// two = aws.directoryservice.Trust("two",
///     directory_id=two_directory.id,
///     remote_domain_name=one_directory.name,
///     trust_direction="One-Way: Outgoing",
///     trust_password="Some0therPassword",
///     conditional_forwarder_ip_addrs=one_directory.dns_ip_addresses)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var oneDirectory = new Aws.DirectoryService.Directory("one", new()
///     {
///         Name = "one.example.com",
///         Type = "MicrosoftAD",
///     });
///
///     var twoDirectory = new Aws.DirectoryService.Directory("two", new()
///     {
///         Name = "two.example.com",
///         Type = "MicrosoftAD",
///     });
///
///     var one = new Aws.DirectoryService.Trust("one", new()
///     {
///         DirectoryId = oneDirectory.Id,
///         RemoteDomainName = twoDirectory.Name,
///         TrustDirection = "One-Way: Incoming",
///         TrustPassword = "Some0therPassword",
///         ConditionalForwarderIpAddrs = twoDirectory.DnsIpAddresses,
///     });
///
///     var two = new Aws.DirectoryService.Trust("two", new()
///     {
///         DirectoryId = twoDirectory.Id,
///         RemoteDomainName = oneDirectory.Name,
///         TrustDirection = "One-Way: Outgoing",
///         TrustPassword = "Some0therPassword",
///         ConditionalForwarderIpAddrs = oneDirectory.DnsIpAddresses,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		oneDirectory, err := directoryservice.NewDirectory(ctx, "one", &directoryservice.DirectoryArgs{
/// 			Name: pulumi.String("one.example.com"),
/// 			Type: pulumi.String("MicrosoftAD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		twoDirectory, err := directoryservice.NewDirectory(ctx, "two", &directoryservice.DirectoryArgs{
/// 			Name: pulumi.String("two.example.com"),
/// 			Type: pulumi.String("MicrosoftAD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewTrust(ctx, "one", &directoryservice.TrustArgs{
/// 			DirectoryId:                 oneDirectory.ID(),
/// 			RemoteDomainName:            twoDirectory.Name,
/// 			TrustDirection:              pulumi.String("One-Way: Incoming"),
/// 			TrustPassword:               pulumi.String("Some0therPassword"),
/// 			ConditionalForwarderIpAddrs: twoDirectory.DnsIpAddresses,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewTrust(ctx, "two", &directoryservice.TrustArgs{
/// 			DirectoryId:                 twoDirectory.ID(),
/// 			RemoteDomainName:            oneDirectory.Name,
/// 			TrustDirection:              pulumi.String("One-Way: Outgoing"),
/// 			TrustPassword:               pulumi.String("Some0therPassword"),
/// 			ConditionalForwarderIpAddrs: oneDirectory.DnsIpAddresses,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.Trust;
/// import com.pulumi.aws.directoryservice.TrustArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var oneDirectory = new Directory("oneDirectory", DirectoryArgs.builder()
///             .name("one.example.com")
///             .type("MicrosoftAD")
///             .build());
///
///         var twoDirectory = new Directory("twoDirectory", DirectoryArgs.builder()
///             .name("two.example.com")
///             .type("MicrosoftAD")
///             .build());
///
///         var one = new Trust("one", TrustArgs.builder()
///             .directoryId(oneDirectory.id())
///             .remoteDomainName(twoDirectory.name())
///             .trustDirection("One-Way: Incoming")
///             .trustPassword("Some0therPassword")
///             .conditionalForwarderIpAddrs(twoDirectory.dnsIpAddresses())
///             .build());
///
///         var two = new Trust("two", TrustArgs.builder()
///             .directoryId(twoDirectory.id())
///             .remoteDomainName(oneDirectory.name())
///             .trustDirection("One-Way: Outgoing")
///             .trustPassword("Some0therPassword")
///             .conditionalForwarderIpAddrs(oneDirectory.dnsIpAddresses())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   one:
///     type: aws:directoryservice:Trust
///     properties:
///       directoryId: ${oneDirectory.id}
///       remoteDomainName: ${twoDirectory.name}
///       trustDirection: 'One-Way: Incoming'
///       trustPassword: Some0therPassword
///       conditionalForwarderIpAddrs: ${twoDirectory.dnsIpAddresses}
///   two:
///     type: aws:directoryservice:Trust
///     properties:
///       directoryId: ${twoDirectory.id}
///       remoteDomainName: ${oneDirectory.name}
///       trustDirection: 'One-Way: Outgoing'
///       trustPassword: Some0therPassword
///       conditionalForwarderIpAddrs: ${oneDirectory.dnsIpAddresses}
///   oneDirectory:
///     type: aws:directoryservice:Directory
///     name: one
///     properties:
///       name: one.example.com
///       type: MicrosoftAD
///   twoDirectory:
///     type: aws:directoryservice:Directory
///     name: two
///     properties:
///       name: two.example.com
///       type: MicrosoftAD
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the Trust relationship using the directory ID and remote domain name, separated by a `/`. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/trust:Trust example d-926724cf57/directory.example.com
/// ```
class Trust extends pulumi.CustomResource {
  /// Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// Can contain between 1 and 4 values.
  late final pulumi.Output<List<String>?> conditionalForwarderIpAddrs;

  /// Date and time when the Trust was created.
  late final pulumi.Output<String> createdDateTime;

  /// Whether to delete the conditional forwarder when deleting the Trust relationship.
  late final pulumi.Output<bool> deleteAssociatedConditionalForwarder;

  /// ID of the Directory.
  late final pulumi.Output<String> directoryId;

  /// Date and time when the Trust was last updated.
  late final pulumi.Output<String> lastUpdatedDateTime;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Fully qualified domain name of the remote Directory.
  late final pulumi.Output<String> remoteDomainName;

  /// Whether to enable selective authentication.
  /// Valid values are `Enabled` and `Disabled`.
  /// Default value is `Disabled`.
  late final pulumi.Output<String> selectiveAuth;

  /// Date and time when the Trust state in `trust_state` was last updated.
  late final pulumi.Output<String> stateLastUpdatedDateTime;

  /// The direction of the Trust relationship.
  /// Valid values are `One-Way: Outgoing`, `One-Way: Incoming`, and `Two-Way`.
  late final pulumi.Output<String> trustDirection;

  /// Password for the Trust.
  /// Does not need to match the passwords for either Directory.
  /// Can contain upper- and lower-case letters, numbers, and punctuation characters.
  /// May be up to 128 characters long.
  late final pulumi.Output<String> trustPassword;

  /// State of the Trust relationship.
  /// One of `Created`, `VerifyFailed`,`Verified`, `UpdateFailed`,`Updated`,`Deleted`, or `Failed`.
  late final pulumi.Output<String> trustState;

  /// Reason for the Trust state set in `trust_state`.
  late final pulumi.Output<String> trustStateReason;

  /// Type of the Trust relationship.
  /// Valid values are `Forest` and `External`.
  /// Default value is `Forest`.
  late final pulumi.Output<String> trustType;

  /// Creates a new [Trust].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trust]. {@macro pulumi_directoryservice_trust_trust_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trust(
    String name, {
    TrustArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/trust:Trust',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conditionalForwarderIpAddrs =
        registerOutput<List<String>?>('conditionalForwarderIpAddrs');
    this.createdDateTime = registerOutput<String>('createdDateTime');
    this.deleteAssociatedConditionalForwarder =
        registerOutput<bool>('deleteAssociatedConditionalForwarder');
    this.directoryId = registerOutput<String>('directoryId');
    this.lastUpdatedDateTime = registerOutput<String>('lastUpdatedDateTime');
    this.region = registerOutput<String>('region');
    this.remoteDomainName = registerOutput<String>('remoteDomainName');
    this.selectiveAuth = registerOutput<String>('selectiveAuth');
    this.stateLastUpdatedDateTime =
        registerOutput<String>('stateLastUpdatedDateTime');
    this.trustDirection = registerOutput<String>('trustDirection');
    this.trustPassword = registerOutput<String>('trustPassword');
    this.trustState = registerOutput<String>('trustState');
    this.trustStateReason = registerOutput<String>('trustStateReason');
    this.trustType = registerOutput<String>('trustType');
  }
}
