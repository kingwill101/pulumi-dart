import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_policy_args.dart';
import 'audit_policy_state.dart';

/// ## Import
///
/// Mongodb Audit Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/auditPolicy:AuditPolicy example <db_instance_id>
/// ```
class AuditPolicy extends pulumi.CustomResource {
  /// Audit state, Valid values: `enable`, `disabled`.
  late final pulumi.Output<String> auditStatus;

  /// Database Instance Id
  late final pulumi.Output<String> dbInstanceId;

  /// The type of logs collected by the audit log feature of the instance. Separate multiple types with commas (,). Valid values:
  late final pulumi.Output<String> filter;

  /// Audit log retention duration. The value range is 1 to 365 days. The default value is 30 days.
  late final pulumi.Output<int> storagePeriod;

  /// Creates a new [AuditPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuditPolicy]. {@macro pulumi_mongodb_audit_policy_audit_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuditPolicy(
    String name, {
    AuditPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mongodb/auditPolicy:AuditPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    auditStatus = registerOutput<String>('auditStatus');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    filter = registerOutput<String>('filter');
    storagePeriod = registerOutput<int>('storagePeriod');
  }

  /// Gets an existing [AuditPolicy] resource's state with the given [name] and [id].
  static AuditPolicy get(
    String name,
    pulumi.Input<String> id, {
    AuditPolicyState? state,
  }) {
    return AuditPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuditPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mongodb/auditPolicy:AuditPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    auditStatus = registerOutput<String>('auditStatus');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    filter = registerOutput<String>('filter');
    storagePeriod = registerOutput<int>('storagePeriod');
  }
}
