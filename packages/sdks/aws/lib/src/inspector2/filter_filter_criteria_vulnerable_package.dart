// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_filter_criteria_vulnerable_package_architecture.dart';
import 'filter_filter_criteria_vulnerable_package_epoch.dart';
import 'filter_filter_criteria_vulnerable_package_file_path.dart';
import 'filter_filter_criteria_vulnerable_package_name.dart';
import 'filter_filter_criteria_vulnerable_package_release.dart';
import 'filter_filter_criteria_vulnerable_package_source_lambda_layer_arn.dart';
import 'filter_filter_criteria_vulnerable_package_source_layer_hash.dart';
import 'filter_filter_criteria_vulnerable_package_version.dart';

class FilterFilterCriteriaVulnerablePackage {
  /// (Optional) The architecture of the package. Documented below.
  final pulumi.Input<FilterFilterCriteriaVulnerablePackageArchitecture>? architecture;
  /// (Optional) The epoch of the package. Documented below.
  final pulumi.Input<List<FilterFilterCriteriaVulnerablePackageEpoch>>? epoches;
  /// (Optional) The name of the package. Documented below.
  final pulumi.Input<FilterFilterCriteriaVulnerablePackageFilePath>? filePath;
  /// Name of the filter.
  final pulumi.Input<FilterFilterCriteriaVulnerablePackageName>? name;
  /// (Optional) The release of the package. Documented below.
  final pulumi.Input<FilterFilterCriteriaVulnerablePackageRelease>? release;
  /// (Optional) The ARN of the package's source lambda layer. Documented below.
  final pulumi.Input<FilterFilterCriteriaVulnerablePackageSourceLambdaLayerArn>? sourceLambdaLayerArn;
  /// (Optional) The source layer hash of the package. Documented below.
  final pulumi.Input<FilterFilterCriteriaVulnerablePackageSourceLayerHash>? sourceLayerHash;
  /// (Optional) The version of the package. Documented below.
  final pulumi.Input<FilterFilterCriteriaVulnerablePackageVersion>? version;

  /// Creates a new [FilterFilterCriteriaVulnerablePackage].
  /// [architecture] (Optional) The architecture of the package. Documented below.
  /// [epoches] (Optional) The epoch of the package. Documented below.
  /// [filePath] (Optional) The name of the package. Documented below.
  /// [name] Name of the filter.
  /// [release] (Optional) The release of the package. Documented below.
  /// [sourceLambdaLayerArn] (Optional) The ARN of the package's source lambda layer. Documented below.
  /// [sourceLayerHash] (Optional) The source layer hash of the package. Documented below.
  /// [version] (Optional) The version of the package. Documented below.
  FilterFilterCriteriaVulnerablePackage({
    this.architecture,
    this.epoches,
    this.filePath,
    this.name,
    this.release,
    this.sourceLambdaLayerArn,
    this.sourceLayerHash,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<FilterFilterCriteriaVulnerablePackageArchitecture, Map<String, dynamic>>(architecture, (value) => value.toMap()),
      'epoches': ?pulumi.Input.mapOptionalInputValue<List<FilterFilterCriteriaVulnerablePackageEpoch>, List<Map<String, dynamic>>>(epoches, (value) => pulumi.Input.encodeList<FilterFilterCriteriaVulnerablePackageEpoch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filePath': ?pulumi.Input.mapOptionalInputValue<FilterFilterCriteriaVulnerablePackageFilePath, Map<String, dynamic>>(filePath, (value) => value.toMap()),
      'name': ?pulumi.Input.mapOptionalInputValue<FilterFilterCriteriaVulnerablePackageName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'release': ?pulumi.Input.mapOptionalInputValue<FilterFilterCriteriaVulnerablePackageRelease, Map<String, dynamic>>(release, (value) => value.toMap()),
      'sourceLambdaLayerArn': ?pulumi.Input.mapOptionalInputValue<FilterFilterCriteriaVulnerablePackageSourceLambdaLayerArn, Map<String, dynamic>>(sourceLambdaLayerArn, (value) => value.toMap()),
      'sourceLayerHash': ?pulumi.Input.mapOptionalInputValue<FilterFilterCriteriaVulnerablePackageSourceLayerHash, Map<String, dynamic>>(sourceLayerHash, (value) => value.toMap()),
      'version': ?pulumi.Input.mapOptionalInputValue<FilterFilterCriteriaVulnerablePackageVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory FilterFilterCriteriaVulnerablePackage.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaVulnerablePackage(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterFilterCriteriaVulnerablePackageArchitecture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      epoches: (() { final guardedValue = map['epoches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterFilterCriteriaVulnerablePackageEpoch>(guardedValue, (value) => FilterFilterCriteriaVulnerablePackageEpoch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterFilterCriteriaVulnerablePackageFilePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterFilterCriteriaVulnerablePackageName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterFilterCriteriaVulnerablePackageRelease.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceLambdaLayerArn: (() { final guardedValue = map['sourceLambdaLayerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterFilterCriteriaVulnerablePackageSourceLambdaLayerArn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceLayerHash: (() { final guardedValue = map['sourceLayerHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterFilterCriteriaVulnerablePackageSourceLayerHash.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterFilterCriteriaVulnerablePackageVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

