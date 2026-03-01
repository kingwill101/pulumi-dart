// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipam_ipams_get_ipam_ipams_args_doc}
/// Arguments for getIpamIpams.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipam_ipams_get_ipam_ipams_args_doc}
class GetIpamIpamsArgs {
  /// A list of Ipam IDs.
  final pulumi.Input<List<String>>? ids;
  /// The first ID of the resource.
  final pulumi.Input<String>? ipamId;
  /// The name of the resource.
  final pulumi.Input<String>? ipamName;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetIpamIpamsArgs].
  /// [ids] A list of Ipam IDs.
  /// [ipamId] The first ID of the resource.
  /// [ipamName] The name of the resource.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  GetIpamIpamsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? ipamId,
    pulumi.Output<String>? ipamName,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipamId = pulumi.Input.asOptionalInput<String>(ipamId),
      ipamName = pulumi.Input.asOptionalInput<String>(ipamName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'ipamId': ?ipamId,
      'ipamName': ?ipamName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetIpamIpamsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      ipamId: map['ipamId'] == null ? null : pulumi.Output.create<String>(map['ipamId'] as String),
      ipamName: map['ipamName'] == null ? null : pulumi.Output.create<String>(map['ipamName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

