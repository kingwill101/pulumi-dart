// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_traffic_marking_policies_get_traffic_marking_policies_args_doc}
/// Arguments for getTrafficMarkingPolicies.
/// {@endtemplate}
/// {@macro pulumi_cen_get_traffic_marking_policies_get_traffic_marking_policies_args_doc}
class GetTrafficMarkingPoliciesArgs {
  final pulumi.Input<String>? description;
  /// A list of Traffic Marking Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Traffic Marking Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource.  Valid values: `Active`, `Creating`, `Deleting`, `Updating`.
  final pulumi.Input<String>? status;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [GetTrafficMarkingPoliciesArgs].
  /// [description] Optional.
  /// [ids] A list of Traffic Marking Policy IDs.
  /// [nameRegex] A regex string to filter results by Traffic Marking Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource.  Valid values: `Active`, `Creating`, `Deleting`, `Updating`.
  /// [transitRouterId] The ID of the transit router.
  GetTrafficMarkingPoliciesArgs({
    this.description,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetTrafficMarkingPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficMarkingPoliciesArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}

