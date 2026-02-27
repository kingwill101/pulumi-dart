// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../package_package_source/package_package_source.dart';

/// The set of arguments for Package.
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

  PackageArgs({
    this.engineVersion,
    this.packageDescription,
    required this.packageName,
    required this.packageSource,
    required this.packageType,
    this.region,
  });

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
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      packageDescription:
          pulumi.Input.asOptionalInput<String>(map['packageDescription']),
      packageName: pulumi.Input.asInput<String>(map['packageName']),
      packageSource:
          pulumi.Input.asInput<PackagePackageSource>(map['packageSource']),
      packageType: pulumi.Input.asInput<String>(map['packageType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
