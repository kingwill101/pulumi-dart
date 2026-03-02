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
    required this.acceleratorId,
    this.ids,
    required this.listenerId,
    this.outputFile,
    this.status,
  });

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
      acceleratorId: (map['acceleratorId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      listenerId: (map['listenerId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

