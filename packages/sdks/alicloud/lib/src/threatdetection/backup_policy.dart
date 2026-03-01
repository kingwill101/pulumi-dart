import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_state.dart';

/// Provides a Threat Detection Backup Policy resource.
///
/// For information about Threat Detection Backup Policy and how to use it, see [What is Backup Policy](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createbackuppolicy).
///
/// > **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.threatdetection.getAssets({
///     machineTypes: "ecs",
/// });
/// const defaultBackupPolicy = new alicloud.threatdetection.BackupPolicy("default", {
///     backupPolicyName: "tf-example-name",
///     policy: "{\"Exclude\":[\"/bin/\",\"/usr/bin/\",\"/sbin/\",\"/boot/\",\"/proc/\",\"/sys/\",\"/srv/\",\"/lib/\",\"/selinux/\",\"/usr/sbin/\",\"/run/\",\"/lib32/\",\"/lib64/\",\"/lost+found/\",\"/var/lib/kubelet/\",\"/var/lib/ntp/proc\",\"/var/lib/container\"],\"ExcludeSystemPath\":true,\"Include\":[],\"IsDefault\":1,\"Retention\":7,\"Schedule\":\"I|1668703620|PT24H\",\"Source\":[],\"SpeedLimiter\":\"\",\"UseVss\":true}",
///     policyVersion: "2.0.0",
///     uuidLists: [_default.then(_default => _default.ids?.[0])],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_assets(machine_types="ecs")
/// default_backup_policy = alicloud.threatdetection.BackupPolicy("default",
///     backup_policy_name="tf-example-name",
///     policy="{\"Exclude\":[\"/bin/\",\"/usr/bin/\",\"/sbin/\",\"/boot/\",\"/proc/\",\"/sys/\",\"/srv/\",\"/lib/\",\"/selinux/\",\"/usr/sbin/\",\"/run/\",\"/lib32/\",\"/lib64/\",\"/lost+found/\",\"/var/lib/kubelet/\",\"/var/lib/ntp/proc\",\"/var/lib/container\"],\"ExcludeSystemPath\":true,\"Include\":[],\"IsDefault\":1,\"Retention\":7,\"Schedule\":\"I|1668703620|PT24H\",\"Source\":[],\"SpeedLimiter\":\"\",\"UseVss\":true}",
///     policy_version="2.0.0",
///     uuid_lists=[default.ids[0]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetAssets.Invoke(new()
///     {
///         MachineTypes = "ecs",
///     });
///
///     var defaultBackupPolicy = new AliCloud.ThreatDetection.BackupPolicy("default", new()
///     {
///         BackupPolicyName = "tf-example-name",
///         Policy = "{\"Exclude\":[\"/bin/\",\"/usr/bin/\",\"/sbin/\",\"/boot/\",\"/proc/\",\"/sys/\",\"/srv/\",\"/lib/\",\"/selinux/\",\"/usr/sbin/\",\"/run/\",\"/lib32/\",\"/lib64/\",\"/lost+found/\",\"/var/lib/kubelet/\",\"/var/lib/ntp/proc\",\"/var/lib/container\"],\"ExcludeSystemPath\":true,\"Include\":[],\"IsDefault\":1,\"Retention\":7,\"Schedule\":\"I|1668703620|PT24H\",\"Source\":[],\"SpeedLimiter\":\"\",\"UseVss\":true}",
///         PolicyVersion = "2.0.0",
///         UuidLists = new[]
///         {
///             @default.Apply(@default => @default.Apply(getAssetsResult => getAssetsResult.Ids[0])),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := threatdetection.GetAssets(ctx, &threatdetection.GetAssetsArgs{
/// 			MachineTypes: pulumi.StringRef("ecs"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = threatdetection.NewBackupPolicy(ctx, "default", &threatdetection.BackupPolicyArgs{
/// 			BackupPolicyName: pulumi.String("tf-example-name"),
/// 			Policy:           pulumi.String("{\"Exclude\":[\"/bin/\",\"/usr/bin/\",\"/sbin/\",\"/boot/\",\"/proc/\",\"/sys/\",\"/srv/\",\"/lib/\",\"/selinux/\",\"/usr/sbin/\",\"/run/\",\"/lib32/\",\"/lib64/\",\"/lost+found/\",\"/var/lib/kubelet/\",\"/var/lib/ntp/proc\",\"/var/lib/container\"],\"ExcludeSystemPath\":true,\"Include\":[],\"IsDefault\":1,\"Retention\":7,\"Schedule\":\"I|1668703620|PT24H\",\"Source\":[],\"SpeedLimiter\":\"\",\"UseVss\":true}"),
/// 			PolicyVersion:    pulumi.String("2.0.0"),
/// 			UuidLists: pulumi.StringArray{
/// 				pulumi.String(_default.Ids[0]),
/// 			},
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetAssetsArgs;
/// import com.pulumi.alicloud.threatdetection.BackupPolicy;
/// import com.pulumi.alicloud.threatdetection.BackupPolicyArgs;
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
///         final var default = ThreatdetectionFunctions.getAssets(GetAssetsArgs.builder()
///             .machineTypes("ecs")
///             .build());
///
///         var defaultBackupPolicy = new BackupPolicy("defaultBackupPolicy", BackupPolicyArgs.builder()
///             .backupPolicyName("tf-example-name")
///             .policy("{\"Exclude\":[\"/bin/\",\"/usr/bin/\",\"/sbin/\",\"/boot/\",\"/proc/\",\"/sys/\",\"/srv/\",\"/lib/\",\"/selinux/\",\"/usr/sbin/\",\"/run/\",\"/lib32/\",\"/lib64/\",\"/lost+found/\",\"/var/lib/kubelet/\",\"/var/lib/ntp/proc\",\"/var/lib/container\"],\"ExcludeSystemPath\":true,\"Include\":[],\"IsDefault\":1,\"Retention\":7,\"Schedule\":\"I|1668703620|PT24H\",\"Source\":[],\"SpeedLimiter\":\"\",\"UseVss\":true}")
///             .policyVersion("2.0.0")
///             .uuidLists(default_.ids()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultBackupPolicy:
///     type: alicloud:threatdetection:BackupPolicy
///     name: default
///     properties:
///       backupPolicyName: tf-example-name
///       policy: '{"Exclude":["/bin/","/usr/bin/","/sbin/","/boot/","/proc/","/sys/","/srv/","/lib/","/selinux/","/usr/sbin/","/run/","/lib32/","/lib64/","/lost+found/","/var/lib/kubelet/","/var/lib/ntp/proc","/var/lib/container"],"ExcludeSystemPath":true,"Include":[],"IsDefault":1,"Retention":7,"Schedule":"I|1668703620|PT24H","Source":[],"SpeedLimiter":"","UseVss":true}'
///       policyVersion: 2.0.0
///       uuidLists:
///         - ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getAssets
///       arguments:
///         machineTypes: ecs
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Backup Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/backupPolicy:BackupPolicy example <id>
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// Protection of the Name of the Policy.
  late final pulumi.Output<String> backupPolicyName;
  /// The Specified Protection Policies of the Specific Configuration. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createbackuppolicy).
  late final pulumi.Output<String> policy;
  /// The region ID of the non-Alibaba cloud server. You can call the [DescribeSupportRegion](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-describesupportregion) interface to view the region supported by anti-ransomware, and then select the region supported by anti-ransomware according to the region where your non-Alibaba cloud server is located.
  late final pulumi.Output<String?> policyRegionId;
  /// Anti-Blackmail Policy Version. Valid values: `1.0.0`, `2.0.0`.
  late final pulumi.Output<String> policyVersion;
  /// The status of the Backup Policy instance.
  late final pulumi.Output<String> status;
  /// Specify the Protection of Server UUID List.
  late final pulumi.Output<List<String>> uuidLists;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_threatdetection_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPolicyName = registerOutput<String>('backupPolicyName');
    this.policy = registerOutput<String>('policy');
    this.policyRegionId = registerOutput<String?>('policyRegionId');
    this.policyVersion = registerOutput<String>('policyVersion');
    this.status = registerOutput<String>('status');
    this.uuidLists = registerOutput<List<String>>('uuidLists');
  }

  /// Gets an existing [BackupPolicy] resource's state with the given [name] and [id].
  static BackupPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyState? state,
  }) {
    return BackupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPolicyName = registerOutput<String>('backupPolicyName');
    this.policy = registerOutput<String>('policy');
    this.policyRegionId = registerOutput<String?>('policyRegionId');
    this.policyVersion = registerOutput<String>('policyVersion');
    this.status = registerOutput<String>('status');
    this.uuidLists = registerOutput<List<String>>('uuidLists');
  }
}
