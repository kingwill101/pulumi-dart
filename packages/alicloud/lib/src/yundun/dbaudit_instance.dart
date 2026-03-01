import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbaudit_instance_args.dart';

/// ## Import
///
/// Yundun_dbaudit instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:yundun/dBAuditInstance:DBAuditInstance example dbaudit-exampe123456
/// ```
class DBAuditInstance extends pulumi.CustomResource {
  /// Description of the instance. This name can have a string of 1 to 63 characters.
  late final pulumi.Output<String> description;
  /// Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int> period;
  /// Plan code of the Cloud DBAudit to produce. (alpha.professional, alpha.basic, alpha.premium)
  late final pulumi.Output<String> planCode;
  /// The Id of resource group which the DBaudit Instance belongs. If not set, the resource is created in the default resource group.
  late final pulumi.Output<String?> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// vSwtich ID configured to audit
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [DBAuditInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DBAuditInstance]. {@macro pulumi_yundun_d_baudit_instance_dbaudit_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DBAuditInstance(
    String name, {
    DBAuditInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:yundun/dBAuditInstance:DBAuditInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.period = registerOutput<int>('period');
    this.planCode = registerOutput<String>('planCode');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
