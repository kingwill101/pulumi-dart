// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_addon_releases_get_addon_releases_args_doc}
/// Arguments for getAddonReleases.
/// {@endtemplate}
/// {@macro pulumi_arms_get_addon_releases_get_addon_releases_args_doc}
class GetAddonReleasesArgs {
  /// The environment ID.
  final pulumi.Input<String> environmentId;
  /// A list of ARMS Addon Release IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by ARMS Addon Release name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAddonReleasesArgs].
  /// [environmentId] The environment ID.
  /// [ids] A list of ARMS Addon Release IDs.
  /// [nameRegex] A regex string to filter results by ARMS Addon Release name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAddonReleasesArgs({
    required pulumi.Output<String> environmentId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAddonReleasesArgs.fromMap(Map<String, dynamic> map) {
    return GetAddonReleasesArgs(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

