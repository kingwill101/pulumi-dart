// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_forwarding_rules_get_forwarding_rules_args_doc}
/// Arguments for getForwardingRules.
/// {@endtemplate}
/// {@macro pulumi_ga_get_forwarding_rules_get_forwarding_rules_args_doc}
class GetForwardingRulesArgs {
  /// The ID of the Global Accelerator instance.
  final pulumi.Input<String> acceleratorId;
  /// A list of Forwarding Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the listener.
  final pulumi.Input<String> listenerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the acceleration region. Valid values: `active`, `configuring`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetForwardingRulesArgs].
  /// [acceleratorId] The ID of the Global Accelerator instance.
  /// [ids] A list of Forwarding Rule IDs.
  /// [listenerId] The ID of the listener.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the acceleration region. Valid values: `active`, `configuring`.
  GetForwardingRulesArgs({
    required String acceleratorId,
    List<String>? ids,
    required String listenerId,
    String? outputFile,
    String? status,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerId = pulumi.Input.asInput<String>(listenerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ids': ?ids,
      'listenerId': listenerId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetForwardingRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesArgs(
      acceleratorId: map['acceleratorId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      listenerId: map['listenerId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

