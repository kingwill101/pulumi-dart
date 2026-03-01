// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_job_provision_on_demand_parameter.dart';

/// {@template pulumi_index_synchronization_job_provision_on_demand_synchronization_job_provision_on_demand_args_doc}
/// The set of arguments for SynchronizationJobProvisionOnDemand.
/// {@endtemplate}
/// {@macro pulumi_index_synchronization_job_provision_on_demand_synchronization_job_provision_on_demand_args_doc}
class SynchronizationJobProvisionOnDemandArgs {
  /// One or more `parameter` blocks as documented below.
  final pulumi.Input<List<SynchronizationJobProvisionOnDemandParameter>> parameters;
  /// The ID of the service principal for the synchronization job.
  final pulumi.Input<String> servicePrincipalId;
  /// The ID of the synchronization job.
  final pulumi.Input<String> synchronizationJobId;
  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation. To force a re-invocation without changing these keys/values, use the `terraform taint` command.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [SynchronizationJobProvisionOnDemandArgs].
  /// [parameters] One or more `parameter` blocks as documented below.
  /// [servicePrincipalId] The ID of the service principal for the synchronization job.
  /// [synchronizationJobId] The ID of the synchronization job.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a re-invocation. To force a re-invocation without changing these keys/values, use the `terraform taint` command.
  SynchronizationJobProvisionOnDemandArgs({
    required List<SynchronizationJobProvisionOnDemandParameter> parameters,
    required String servicePrincipalId,
    required String synchronizationJobId,
    Map<String, String>? triggers,
  }) :
      parameters = pulumi.Input.asInput<List<SynchronizationJobProvisionOnDemandParameter>>(parameters),
      servicePrincipalId = pulumi.Input.asInput<String>(servicePrincipalId),
      synchronizationJobId = pulumi.Input.asInput<String>(synchronizationJobId),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<SynchronizationJobProvisionOnDemandParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SynchronizationJobProvisionOnDemandParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': servicePrincipalId,
      'synchronizationJobId': synchronizationJobId,
      'triggers': ?triggers,
    };
  }

  factory SynchronizationJobProvisionOnDemandArgs.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobProvisionOnDemandArgs(
      parameters: pulumi.Input.decodeList<SynchronizationJobProvisionOnDemandParameter>(map['parameters'], (value) => SynchronizationJobProvisionOnDemandParameter.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipalId: map['servicePrincipalId'] as String,
      synchronizationJobId: map['synchronizationJobId'] as String,
      triggers: map['triggers'] == null ? null : (map['triggers'] as Map).cast<String, String>(),
    );
  }
}

