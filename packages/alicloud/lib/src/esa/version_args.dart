// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_version_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_esa_version_version_args_doc}
class VersionArgs {
  /// The Site version's description.
  final pulumi.Input<String>? description;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int> originVersion;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String> siteId;

  /// Creates a new [VersionArgs].
  /// [description] The Site version's description.
  /// [originVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  VersionArgs({
    String? description,
    required int originVersion,
    required String siteId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      originVersion = pulumi.Input.asInput<int>(originVersion),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'originVersion': originVersion,
      'siteId': siteId,
    };
  }

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      originVersion: map['originVersion'] as int,
      siteId: map['siteId'] as String,
    );
  }
}

