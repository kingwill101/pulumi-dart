import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_record.dart';
import 'domain_state.dart';

/// Manages a mail domain registered to an AWS WorkMail organization.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workmail.Domain("example", {
///     organizationId: exampleAwsWorkmailOrganization.id,
///     domainName: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workmail.Domain("example",
///     organization_id=example_aws_workmail_organization["id"],
///     domain_name="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkMail.Domain("example", new()
///     {
///         OrganizationId = exampleAwsWorkmailOrganization.Id,
///         DomainName = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workmail.NewDomain(ctx, "example", &workmail.DomainArgs{
/// 			OrganizationId: pulumi.Any(exampleAwsWorkmailOrganization.Id),
/// 			DomainName:     pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_workmail_domain" "example" {
///   organization_id = exampleAwsWorkmailOrganization.id
///   domain_name     = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workmail.Domain;
/// import com.pulumi.aws.workmail.DomainArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .organizationId(exampleAwsWorkmailOrganization.id())
///             .domainName("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workmail:Domain
///     properties:
///       organizationId: ${exampleAwsWorkmailOrganization.id}
///       domainName: example.com
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `domainName` (String) Mail domain name.
/// * `organizationId` (String) Identifier of the WorkMail organization.
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import WorkMail Domain using `organization_id,domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:workmail/domain:Domain example "m-1234567890abcdef0,example.com"
/// ```
class Domain extends pulumi.CustomResource {
  /// DKIM verification status. Values: `PENDING`, `VERIFIED`, `FAILED`.
  late final pulumi.Output<String> dkimVerificationStatus;
  /// Mail domain name to register. Changing this forces a new resource.
  late final pulumi.Output<String> domainName;
  /// Whether this domain is the default mail domain for the organization.
  late final pulumi.Output<bool> isDefault;
  /// Whether this is the auto-provisioned test domain.
  late final pulumi.Output<bool> isTestDomain;
  /// Identifier of the WorkMail organization. Changing this forces a new resource.
  late final pulumi.Output<String> organizationId;
  /// Domain ownership verification status. Values: `PENDING`, `VERIFIED`, `FAILED`.
  late final pulumi.Output<String> ownershipVerificationStatus;
  /// List of DNS records required for domain verification. See `records` Block below.
  late final pulumi.Output<List<DomainRecord>> records;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_workmail_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    dkimVerificationStatus = registerOutput<String>('dkimVerificationStatus');
    domainName = registerOutput<String>('domainName');
    isDefault = registerOutput<bool>('isDefault');
    isTestDomain = registerOutput<bool>('isTestDomain');
    organizationId = registerOutput<String>('organizationId');
    ownershipVerificationStatus = registerOutput<String>('ownershipVerificationStatus');
    records = registerOutput<List<DomainRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainRecord>(guardedValue, (value) => DomainRecord.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dkimVerificationStatus = registerOutput<String>('dkimVerificationStatus');
    domainName = registerOutput<String>('domainName');
    isDefault = registerOutput<bool>('isDefault');
    isTestDomain = registerOutput<bool>('isTestDomain');
    organizationId = registerOutput<String>('organizationId');
    ownershipVerificationStatus = registerOutput<String>('ownershipVerificationStatus');
    records = registerOutput<List<DomainRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainRecord>(guardedValue, (value) => DomainRecord.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Domain] resource.
  Domain.reference(String urn)
    : super(
        'aws:workmail/domain:Domain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dkimVerificationStatus = registerOutput<String>('dkimVerificationStatus');
    domainName = registerOutput<String>('domainName');
    isDefault = registerOutput<bool>('isDefault');
    isTestDomain = registerOutput<bool>('isTestDomain');
    organizationId = registerOutput<String>('organizationId');
    ownershipVerificationStatus = registerOutput<String>('ownershipVerificationStatus');
    records = registerOutput<List<DomainRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainRecord>(guardedValue, (value) => DomainRecord.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
  }
}
