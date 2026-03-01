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
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    required pulumi.Output<String> transitRouterId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

