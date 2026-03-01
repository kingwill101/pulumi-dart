import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Provides a Connection of Direct Connect.
///
/// ## Example Usage
///
/// ### Create a connection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const hoge = new aws.directconnect.Connection("hoge", {
///     name: "tf-dx-connection",
///     bandwidth: "1Gbps",
///     location: "EqDC2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hoge = aws.directconnect.Connection("hoge",
///     name="tf-dx-connection",
///     bandwidth="1Gbps",
///     location="EqDC2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hoge = new Aws.DirectConnect.Connection("hoge", new()
///     {
///         Name = "tf-dx-connection",
///         Bandwidth = "1Gbps",
///         Location = "EqDC2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewConnection(ctx, "hoge", &directconnect.ConnectionArgs{
/// 			Name:      pulumi.String("tf-dx-connection"),
/// 			Bandwidth: pulumi.String("1Gbps"),
/// 			Location:  pulumi.String("EqDC2"),
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
/// import com.pulumi.aws.directconnect.Connection;
/// import com.pulumi.aws.directconnect.ConnectionArgs;
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
///         var hoge = new Connection("hoge", ConnectionArgs.builder()
///             .name("tf-dx-connection")
///             .bandwidth("1Gbps")
///             .location("EqDC2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hoge:
///     type: aws:directconnect:Connection
///     properties:
///       name: tf-dx-connection
///       bandwidth: 1Gbps
///       location: EqDC2
/// ```
///
///
/// ### Request a MACsec-capable connection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Connection("example", {
///     name: "tf-dx-connection",
///     bandwidth: "10Gbps",
///     location: "EqDA2",
///     requestMacsec: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Connection("example",
///     name="tf-dx-connection",
///     bandwidth="10Gbps",
///     location="EqDA2",
///     request_macsec=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.Connection("example", new()
///     {
///         Name = "tf-dx-connection",
///         Bandwidth = "10Gbps",
///         Location = "EqDA2",
///         RequestMacsec = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewConnection(ctx, "example", &directconnect.ConnectionArgs{
/// 			Name:          pulumi.String("tf-dx-connection"),
/// 			Bandwidth:     pulumi.String("10Gbps"),
/// 			Location:      pulumi.String("EqDA2"),
/// 			RequestMacsec: pulumi.Bool(true),
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
/// import com.pulumi.aws.directconnect.Connection;
/// import com.pulumi.aws.directconnect.ConnectionArgs;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("tf-dx-connection")
///             .bandwidth("10Gbps")
///             .location("EqDA2")
///             .requestMacsec(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:Connection
///     properties:
///       name: tf-dx-connection
///       bandwidth: 10Gbps
///       location: EqDA2
///       requestMacsec: true
/// ```
///
///
/// ### Configure encryption mode for MACsec-capable connections
///
/// > **NOTE:** You can only specify the `encryption_mode` argument once the connection is in an `Available` state.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Connection("example", {
///     name: "tf-dx-connection",
///     bandwidth: "10Gbps",
///     location: "EqDC2",
///     requestMacsec: true,
///     encryptionMode: "must_encrypt",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Connection("example",
///     name="tf-dx-connection",
///     bandwidth="10Gbps",
///     location="EqDC2",
///     request_macsec=True,
///     encryption_mode="must_encrypt")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectConnect.Connection("example", new()
///     {
///         Name = "tf-dx-connection",
///         Bandwidth = "10Gbps",
///         Location = "EqDC2",
///         RequestMacsec = true,
///         EncryptionMode = "must_encrypt",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewConnection(ctx, "example", &directconnect.ConnectionArgs{
/// 			Name:           pulumi.String("tf-dx-connection"),
/// 			Bandwidth:      pulumi.String("10Gbps"),
/// 			Location:       pulumi.String("EqDC2"),
/// 			RequestMacsec:  pulumi.Bool(true),
/// 			EncryptionMode: pulumi.String("must_encrypt"),
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
/// import com.pulumi.aws.directconnect.Connection;
/// import com.pulumi.aws.directconnect.ConnectionArgs;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("tf-dx-connection")
///             .bandwidth("10Gbps")
///             .location("EqDC2")
///             .requestMacsec(true)
///             .encryptionMode("must_encrypt")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directconnect:Connection
///     properties:
///       name: tf-dx-connection
///       bandwidth: 10Gbps
///       location: EqDC2
///       requestMacsec: true
///       encryptionMode: must_encrypt
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect connections using the connection `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/connection:Connection test_connection dxcon-ffre0ec3
/// ```
class Connection extends pulumi.CustomResource {
  /// The ARN of the connection.
  late final pulumi.Output<String> arn;
  /// The Direct Connect endpoint on which the physical connection terminates.
  late final pulumi.Output<String> awsDevice;
  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  late final pulumi.Output<String> bandwidth;
  /// The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are `no_encrypt`, `should_encrypt`, and `must_encrypt`.
  late final pulumi.Output<String> encryptionMode;
  /// Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  late final pulumi.Output<String> hasLogicalRedundancy;
  /// Boolean value representing if jumbo frames have been enabled for this connection.
  late final pulumi.Output<bool> jumboFrameCapable;
  /// The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  late final pulumi.Output<String> location;
  /// Boolean value indicating whether the connection supports MAC Security (MACsec).
  late final pulumi.Output<bool> macsecCapable;
  /// The name of the connection.
  late final pulumi.Output<String> name;
  /// The ID of the AWS account that owns the connection.
  late final pulumi.Output<String> ownerAccountId;
  /// The name of the AWS Direct Connect service provider associated with the connection.
  late final pulumi.Output<String> partnerName;
  /// The MAC Security (MACsec) port link status of the connection.
  late final pulumi.Output<String> portEncryptionStatus;
  /// The name of the service provider associated with the connection.
  late final pulumi.Output<String> providerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: `false`.
  ///
  /// > **NOTE:** Changing the value of `request_macsec` will cause the resource to be destroyed and re-created.
  late final pulumi.Output<bool?> requestMacsec;
  /// Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  late final pulumi.Output<bool?> skipDestroy;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VLAN ID.
  late final pulumi.Output<int> vlanId;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_directconnect_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsDevice = registerOutput<String>('awsDevice');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.encryptionMode = registerOutput<String>('encryptionMode');
    this.hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.location = registerOutput<String>('location');
    this.macsecCapable = registerOutput<bool>('macsecCapable');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.partnerName = registerOutput<String>('partnerName');
    this.portEncryptionStatus = registerOutput<String>('portEncryptionStatus');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.requestMacsec = registerOutput<bool?>('requestMacsec');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlanId = registerOutput<int>('vlanId');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsDevice = registerOutput<String>('awsDevice');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.encryptionMode = registerOutput<String>('encryptionMode');
    this.hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.location = registerOutput<String>('location');
    this.macsecCapable = registerOutput<bool>('macsecCapable');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.partnerName = registerOutput<String>('partnerName');
    this.portEncryptionStatus = registerOutput<String>('portEncryptionStatus');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.requestMacsec = registerOutput<bool?>('requestMacsec');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlanId = registerOutput<int>('vlanId');
  }
}
