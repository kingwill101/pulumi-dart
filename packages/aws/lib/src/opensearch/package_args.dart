// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package_package_source.dart';

/// {@template pulumi_opensearch_package_package_args_doc}
/// The set of arguments for Package.
/// {@endtemplate}
/// {@macro pulumi_opensearch_package_package_args_doc}
class PackageArgs {
  /// Engine version that the package is compatible with. This argument is required and only valid when `package_type` is `ZIP-PLUGIN`. Format: `OpenSearch_X.Y` or `Elasticsearch_X.Y`, where `X` and `Y` are the major and minor version numbers, respectively.
  final pulumi.Input<String>? engineVersion;

  /// Description of the package.
  final pulumi.Input<String>? packageDescription;

  /// Unique name for the package.
  final pulumi.Input<String> packageName;

  /// Configuration block for the package source options.
  final pulumi.Input<PackagePackageSource> packageSource;

  /// The type of package. Valid values are `TXT-DICTIONARY`, `ZIP-PLUGIN`, `PACKAGE-LICENSE` and `PACKAGE-CONFIG`.
  final pulumi.Input<String> packageType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PackageArgs].
  /// [engineVersion] Engine version that the package is compatible with. This argument is required and only valid when `package_type` is `ZIP-PLUGIN`. Format: `OpenSearch_X.Y` or `Elasticsearch_X.Y`, where `X` and `Y` are the major and minor version numbers, respectively.
  /// [packageDescription] Description of the package.
  /// [packageName] Unique name for the package.
  /// [packageSource] Configuration block for the package source options.
  /// [packageType] The type of package. Valid values are `TXT-DICTIONARY`, `ZIP-PLUGIN`, `PACKAGE-LICENSE` and `PACKAGE-CONFIG`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PackageArgs({
    String? engineVersion,
    String? packageDescription,
    required String packageName,
    required PackagePackageSource packageSource,
    required String packageType,
    String? region,
  })  : engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        packageDescription =
            pulumi.Input.asOptionalInput<String>(packageDescription),
        packageName = pulumi.Input.asInput<String>(packageName),
        packageSource =
            pulumi.Input.asInput<PackagePackageSource>(packageSource),
        packageType = pulumi.Input.asInput<String>(packageType),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final packageDescriptionValue = packageDescription;
    if (packageDescriptionValue != null) {
      map['packageDescription'] = packageDescriptionValue;
    }
    map['packageName'] = packageName;
    map['packageSource'] =
        pulumi.Input.mapInputValue<PackagePackageSource, Map<String, dynamic>>(
            packageSource, (value) => value.toMap());
    map['packageType'] = packageType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PackageArgs.fromMap(Map<String, dynamic> map) {
    return PackageArgs(
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      packageDescription: map['packageDescription'] == null
          ? null
          : map['packageDescription'] as String,
      packageName: map['packageName'] as String,
      packageSource: PackagePackageSource.fromMap(
          (map['packageSource'] as Map).cast<String, dynamic>()),
      packageType: map['packageType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
