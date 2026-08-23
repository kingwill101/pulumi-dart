import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_smb_args.dart';
import 'location_smb_mount_options.dart';
import 'location_smb_state.dart';

/// Manages a SMB Location within AWS DataSync.
///
/// &gt; **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationSmb("example", {
///     serverHostname: "smb.example.com",
///     subdirectory: "/exported/path",
///     user: "Guest",
///     password: "ANotGreatPassword",
///     agentArns: [exampleAwsDatasyncAgent.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationSmb("example",
///     server_hostname="smb.example.com",
///     subdirectory="/exported/path",
///     user="Guest",
///     password="ANotGreatPassword",
///     agent_arns=[example_aws_datasync_agent["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.LocationSmb("example", new()
///     {
///         ServerHostname = "smb.example.com",
///         Subdirectory = "/exported/path",
///         User = "Guest",
///         Password = "ANotGreatPassword",
///         AgentArns = new[]
///         {
///             exampleAwsDatasyncAgent.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewLocationSmb(ctx, "example", &datasync.LocationSmbArgs{
/// 			ServerHostname: pulumi.String("smb.example.com"),
/// 			Subdirectory:   pulumi.String("/exported/path"),
/// 			User:           pulumi.String("Guest"),
/// 			Password:       pulumi.String("ANotGreatPassword"),
/// 			AgentArns: pulumi.StringArray{
/// 				exampleAwsDatasyncAgent.Arn,
/// 			},
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
/// resource "aws_datasync_locationsmb" "example" {
///   server_hostname = "smb.example.com"
///   subdirectory    = "/exported/path"
///   user            = "Guest"
///   password        = "ANotGreatPassword"
///   agent_arns      = [exampleAwsDatasyncAgent.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.LocationSmb;
/// import com.pulumi.aws.datasync.LocationSmbArgs;
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
///         var example = new LocationSmb("example", LocationSmbArgs.builder()
///             .serverHostname("smb.example.com")
///             .subdirectory("/exported/path")
///             .user("Guest")
///             .password("ANotGreatPassword")
///             .agentArns(exampleAwsDatasyncAgent.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:LocationSmb
///     properties:
///       serverHostname: smb.example.com
///       subdirectory: /exported/path
///       user: Guest
///       password: ANotGreatPassword
///       agentArns:
///         - ${exampleAwsDatasyncAgent.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync SMB location.
///
///
/// Using `pulumi import`, import `aws.datasync.LocationSmb` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationSmb:LocationSmb example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationSmb extends pulumi.CustomResource {
  /// A list of DataSync Agent ARNs with which this location will be associated.
  late final pulumi.Output<List<String>> agentArns;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;
  /// The name of the Windows domain the SMB server belongs to.
  late final pulumi.Output<String> domain;
  /// Configuration block containing mount options used by DataSync to access the SMB Server. Can be `AUTOMATIC`, `SMB2`, or `SMB3`.
  late final pulumi.Output<LocationSmbMountOptions?> mountOptions;
  /// The password of the user who can mount the share and has file permissions in the SMB.
  late final pulumi.Output<String> password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share.
  late final pulumi.Output<String> serverHostname;
  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  late final pulumi.Output<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;
  /// The user who can mount the share and has file and folder permissions in the SMB share.
  late final pulumi.Output<String> user;

  /// Creates a new [LocationSmb].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocationSmb]. {@macro pulumi_datasync_location_smb_location_smb_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocationSmb(
    String name, {
    LocationSmbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationSmb:LocationSmb',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentArns = registerOutput<List<String>>('agentArns');
    arn = registerOutput<String>('arn');
    domain = registerOutput<String>('domain');
    mountOptions = registerOutput<LocationSmbMountOptions?>('mountOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationSmbMountOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    password = registerOutput<String>('password');
    region = registerOutput<String>('region');
    serverHostname = registerOutput<String>('serverHostname');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [LocationSmb] resource's state with the given [name] and [id].
  static LocationSmb get(
    String name,
    pulumi.Input<String> id, {
    LocationSmbState? state,
  }) {
    return LocationSmb._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocationSmb._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationSmb:LocationSmb',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentArns = registerOutput<List<String>>('agentArns');
    arn = registerOutput<String>('arn');
    domain = registerOutput<String>('domain');
    mountOptions = registerOutput<LocationSmbMountOptions?>('mountOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationSmbMountOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    password = registerOutput<String>('password');
    region = registerOutput<String>('region');
    serverHostname = registerOutput<String>('serverHostname');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
    user = registerOutput<String>('user');
  }
}
