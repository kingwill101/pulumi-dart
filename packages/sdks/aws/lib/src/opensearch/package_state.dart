// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package_package_source.dart';

/// Input properties used for looking up and filtering Package resources.
class PackageState {
  /// The current version of the package.
  final pulumi.Input<String>? availablePackageVersion;
  /// Engine version that the package is compatible with. This argument is required and only valid when `package_type` is `ZIP-PLUGIN`. Format: `OpenSearch_X.Y` or `Elasticsearch_X.Y`, where `X` and `Y` are the major and minor version numbers, respectively.
  final pulumi.Input<String>? engineVersion;
  /// Description of the package.
  final pulumi.Input<String>? packageDescription;
  final pulumi.Input<String>? packageId;
  /// Unique name for the package.
  final pulumi.Input<String>? packageName;
  /// Configuration block for the package source options.
  final pulumi.Input<PackagePackageSource>? packageSource;
  /// The type of package. Valid values are `TXT-DICTIONARY`, `ZIP-PLUGIN`, `PACKAGE-LICENSE` and `PACKAGE-CONFIG`.
  final pulumi.Input<String>? packageType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PackageState].
  /// [availablePackageVersion] The current version of the package.
  /// [engineVersion] Engine version that the package is compatible with. This argument is required and only valid when `package_type` is `ZIP-PLUGIN`. Format: `OpenSearch_X.Y` or `Elasticsearch_X.Y`, where `X` and `Y` are the major and minor version numbers, respectively.
  /// [packageDescription] Description of the package.
  /// [packageId] Optional.
  /// [packageName] Unique name for the package.
  /// [packageSource] Configuration block for the package source options.
  /// [packageType] The type of package. Valid values are `TXT-DICTIONARY`, `ZIP-PLUGIN`, `PACKAGE-LICENSE` and `PACKAGE-CONFIG`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PackageState({
    this.availablePackageVersion,
    this.engineVersion,
    this.packageDescription,
    this.packageId,
    this.packageName,
    this.packageSource,
    this.packageType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availablePackageVersion': ?availablePackageVersion,
      'engineVersion': ?engineVersion,
      'packageDescription': ?packageDescription,
      'packageId': ?packageId,
      'packageName': ?packageName,
      'packageSource': ?pulumi.Input.mapOptionalInputValue<PackagePackageSource, Map<String, dynamic>>(packageSource, (value) => value.toMap()),
      'packageType': ?packageType,
      'region': ?region,
    };
  }

  factory PackageState.fromMap(Map<String, dynamic> map) {
    return PackageState(
      availablePackageVersion: map['availablePackageVersion'] == null ? null : ((map['availablePackageVersion'] as String).input()).input(),
      engineVersion: map['engineVersion'] == null ? null : ((map['engineVersion'] as String).input()).input(),
      packageDescription: map['packageDescription'] == null ? null : ((map['packageDescription'] as String).input()).input(),
      packageId: map['packageId'] == null ? null : ((map['packageId'] as String).input()).input(),
      packageName: map['packageName'] == null ? null : ((map['packageName'] as String).input()).input(),
      packageSource: map['packageSource'] == null ? null : ((PackagePackageSource.fromMap((map['packageSource']! as Map).cast<String, dynamic>())).input()).input(),
      packageType: map['packageType'] == null ? null : ((map['packageType'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

