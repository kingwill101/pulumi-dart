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
    this.engineVersion,
    this.packageDescription,
    required this.packageName,
    required this.packageSource,
    required this.packageType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineVersion': ?engineVersion,
      'packageDescription': ?packageDescription,
      'packageName': packageName,
      'packageSource': pulumi.Input.mapInputValue<PackagePackageSource, Map<String, dynamic>>(packageSource, (value) => value.toMap()),
      'packageType': packageType,
      'region': ?region,
    };
  }

  factory PackageArgs.fromMap(Map<String, dynamic> map) {
    return PackageArgs(
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      packageDescription: map['packageDescription'] == null ? null : (map['packageDescription'] as String).input(),
      packageName: (map['packageName'] as String).input(),
      packageSource: (PackagePackageSource.fromMap((map['packageSource'] as Map).cast<String, dynamic>())).input(),
      packageType: (map['packageType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

