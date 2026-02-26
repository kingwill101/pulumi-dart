import 'package:pulumi/pulumi.dart';
import 'connection_args4.dart';

/// Provides a Connection of Direct Connect.
///
/// ## Example Usage
///
/// ### Create a connection
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const hoge = new aws.directconnect.Connection("hoge", {
/// name: "tf-dx-connection",
/// bandwidth: "1Gbps",
/// location: "EqDC2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hoge = aws.directconnect.Connection("hoge",
/// name="tf-dx-connection",
/// bandwidth="1Gbps",
/// location="EqDC2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hoge = new Aws.DirectConnect.Connection("hoge", new()
/// {
/// Name = "tf-dx-connection",
/// Bandwidth = "1Gbps",
/// Location = "EqDC2",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directconnect.NewConnection(ctx, "hoge", &directconnect.ConnectionArgs{
/// Name:      pulumi.String("tf-dx-connection"),
/// Bandwidth: pulumi.String("1Gbps"),
/// Location:  pulumi.String("EqDC2"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var hoge = new Connection("hoge", ConnectionArgs.builder()
/// .name("tf-dx-connection")
/// .bandwidth("1Gbps")
/// .location("EqDC2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hoge:
/// type: aws:directconnect:Connection
/// properties:
/// name: tf-dx-connection
/// bandwidth: 1Gbps
/// location: EqDC2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Request a MACsec-capable connection
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Connection("example", {
/// name: "tf-dx-connection",
/// bandwidth: "10Gbps",
/// location: "EqDA2",
/// requestMacsec: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Connection("example",
/// name="tf-dx-connection",
/// bandwidth="10Gbps",
/// location="EqDA2",
/// request_macsec=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DirectConnect.Connection("example", new()
/// {
/// Name = "tf-dx-connection",
/// Bandwidth = "10Gbps",
/// Location = "EqDA2",
/// RequestMacsec = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directconnect.NewConnection(ctx, "example", &directconnect.ConnectionArgs{
/// Name:          pulumi.String("tf-dx-connection"),
/// Bandwidth:     pulumi.String("10Gbps"),
/// Location:      pulumi.String("EqDA2"),
/// RequestMacsec: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Connection("example", ConnectionArgs.builder()
/// .name("tf-dx-connection")
/// .bandwidth("10Gbps")
/// .location("EqDA2")
/// .requestMacsec(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:directconnect:Connection
/// properties:
/// name: tf-dx-connection
/// bandwidth: 10Gbps
/// location: EqDA2
/// requestMacsec: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Configure encryption mode for MACsec-capable connections
///
/// > **NOTE:** You can only specify the <span pulumi-lang-nodejs="`encryptionMode`" pulumi-lang-dotnet="`EncryptionMode`" pulumi-lang-go="`encryptionMode`" pulumi-lang-python="`encryption_mode`" pulumi-lang-yaml="`encryptionMode`" pulumi-lang-java="`encryptionMode`">`encryption_mode`</span> argument once the connection is in an `Available` state.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Connection("example", {
/// name: "tf-dx-connection",
/// bandwidth: "10Gbps",
/// location: "EqDC2",
/// requestMacsec: true,
/// encryptionMode: "must_encrypt",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Connection("example",
/// name="tf-dx-connection",
/// bandwidth="10Gbps",
/// location="EqDC2",
/// request_macsec=True,
/// encryption_mode="must_encrypt")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DirectConnect.Connection("example", new()
/// {
/// Name = "tf-dx-connection",
/// Bandwidth = "10Gbps",
/// Location = "EqDC2",
/// RequestMacsec = true,
/// EncryptionMode = "must_encrypt",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directconnect.NewConnection(ctx, "example", &directconnect.ConnectionArgs{
/// Name:           pulumi.String("tf-dx-connection"),
/// Bandwidth:      pulumi.String("10Gbps"),
/// Location:       pulumi.String("EqDC2"),
/// RequestMacsec:  pulumi.Bool(true),
/// EncryptionMode: pulumi.String("must_encrypt"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Connection("example", ConnectionArgs.builder()
/// .name("tf-dx-connection")
/// .bandwidth("10Gbps")
/// .location("EqDC2")
/// .requestMacsec(true)
/// .encryptionMode("must_encrypt")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:directconnect:Connection
/// properties:
/// name: tf-dx-connection
/// bandwidth: 10Gbps
/// location: EqDC2
/// requestMacsec: true
/// encryptionMode: must_encrypt
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect connections using the connection <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/connection:Connection test_connection dxcon-ffre0ec3
/// ```
class Connection4 extends CustomResource {
  /// The ARN of the connection.
  late final Output<String> arn;

  /// The Direct Connect endpoint on which the physical connection terminates.
  late final Output<String> awsDevice;

  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  late final Output<String> bandwidth;

  /// The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are <span pulumi-lang-nodejs="`noEncrypt`" pulumi-lang-dotnet="`NoEncrypt`" pulumi-lang-go="`noEncrypt`" pulumi-lang-python="`no_encrypt`" pulumi-lang-yaml="`noEncrypt`" pulumi-lang-java="`noEncrypt`">`no_encrypt`</span>, <span pulumi-lang-nodejs="`shouldEncrypt`" pulumi-lang-dotnet="`ShouldEncrypt`" pulumi-lang-go="`shouldEncrypt`" pulumi-lang-python="`should_encrypt`" pulumi-lang-yaml="`shouldEncrypt`" pulumi-lang-java="`shouldEncrypt`">`should_encrypt`</span>, and <span pulumi-lang-nodejs="`mustEncrypt`" pulumi-lang-dotnet="`MustEncrypt`" pulumi-lang-go="`mustEncrypt`" pulumi-lang-python="`must_encrypt`" pulumi-lang-yaml="`mustEncrypt`" pulumi-lang-java="`mustEncrypt`">`must_encrypt`</span>.
  late final Output<String> encryptionMode;

  /// Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
  late final Output<String> hasLogicalRedundancy;

  /// Boolean value representing if jumbo frames have been enabled for this connection.
  late final Output<bool> jumboFrameCapable;

  /// The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  late final Output<String> location;

  /// Boolean value indicating whether the connection supports MAC Security (MACsec).
  late final Output<bool> macsecCapable;

  /// The name of the connection.
  late final Output<String> name;

  /// The ID of the AWS account that owns the connection.
  late final Output<String> ownerAccountId;

  /// The name of the AWS Direct Connect service provider associated with the connection.
  late final Output<String> partnerName;

  /// The MAC Security (MACsec) port link status of the connection.
  late final Output<String> portEncryptionStatus;

  /// The name of the service provider associated with the connection.
  late final Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  ///
  /// > **NOTE:** Changing the value of <span pulumi-lang-nodejs="`requestMacsec`" pulumi-lang-dotnet="`RequestMacsec`" pulumi-lang-go="`requestMacsec`" pulumi-lang-python="`request_macsec`" pulumi-lang-yaml="`requestMacsec`" pulumi-lang-java="`requestMacsec`">`request_macsec`</span> will cause the resource to be destroyed and re-created.
  late final Output<bool?> requestMacsec;

  /// Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  late final Output<bool?> skipDestroy;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VLAN ID.
  late final Output<int> vlanId;

  Connection4(
    String name, {
    ConnectionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsDevice = Output.createUnknown<String>();
    this.bandwidth = Output.createUnknown<String>();
    this.encryptionMode = Output.createUnknown<String>();
    this.hasLogicalRedundancy = Output.createUnknown<String>();
    this.jumboFrameCapable = Output.createUnknown<bool>();
    this.location = Output.createUnknown<String>();
    this.macsecCapable = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.partnerName = Output.createUnknown<String>();
    this.portEncryptionStatus = Output.createUnknown<String>();
    this.providerName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestMacsec = Output.createUnknown<bool?>();
    this.skipDestroy = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vlanId = Output.createUnknown<int>();
  }
}
