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
  const PackageState({
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
      availablePackageVersion: (() { final guardedValue = map['availablePackageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageDescription: (() { final guardedValue = map['packageDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageId: (() { final guardedValue = map['packageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageSource: (() { final guardedValue = map['packageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackagePackageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageType: (() { final guardedValue = map['packageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

