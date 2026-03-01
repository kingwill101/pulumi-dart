import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';

/// ## Import
///
/// Simple Application Server Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:simpleapplicationserver/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Specifies whether to enable auto-renewal. Unit: months. Valid values: `true` and `false`.
  late final pulumi.Output<bool?> autoRenew;
  /// The auto renew period. Valid values: `1`,`3`, `6`, `12`, `24`, `36`. **NOTE:** The attribute `auto_renew` is valid when the attribute is `true`.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// The size of the data disk. Unit: GB. Valid values: `0` to `16380`.
  late final pulumi.Output<int?> dataDiskSize;
  /// The ID of the image.  You can use the `alicloud.simpleapplicationserver.getImages` to query the available images in the specified region. The value must be an integral multiple of 20.
  late final pulumi.Output<String> imageId;
  /// The name of the simple application server.
  late final pulumi.Output<String?> instanceName;
  /// The password of the simple application server. The password must be 8 to 30 characters in length. It must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include: `( ) ~ ! @ # $ % ^ & * - + = | { } [ ] : ; < > , . ? /`.
  late final pulumi.Output<String?> password;
  /// The paymen type of the resource. Valid values: `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The period. Unit: months. Valid values: `1`,`3`, `6`, `12`, `24`, `36`.
  late final pulumi.Output<int> period;
  /// The ID of the plan. You can use the `alicloud.simpleapplicationserver.getServerPlans`  to query all the plans provided by Simple Application Server in the specified region.
  late final pulumi.Output<String> planId;
  /// The status of the simple application server. Valid values: `Resetting`, `Running`, `Stopped`.
  late final pulumi.Output<String> status;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_simpleapplicationserver_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:simpleapplicationserver/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    this.dataDiskSize = registerOutput<int?>('dataDiskSize');
    this.imageId = registerOutput<String>('imageId');
    this.instanceName = registerOutput<String?>('instanceName');
    this.password = registerOutput<String?>('password');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int>('period');
    this.planId = registerOutput<String>('planId');
    this.status = registerOutput<String>('status');
  }
}
