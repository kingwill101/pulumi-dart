// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../filter_filter_criteria_vulnerable_package_architecture/filter_filter_criteria_vulnerable_package_architecture.dart';
import '../filter_filter_criteria_vulnerable_package_epoch/filter_filter_criteria_vulnerable_package_epoch.dart';
import '../filter_filter_criteria_vulnerable_package_file_path/filter_filter_criteria_vulnerable_package_file_path.dart';
import '../filter_filter_criteria_vulnerable_package_name/filter_filter_criteria_vulnerable_package_name.dart';
import '../filter_filter_criteria_vulnerable_package_release/filter_filter_criteria_vulnerable_package_release.dart';
import '../filter_filter_criteria_vulnerable_package_source_lambda_layer_arn/filter_filter_criteria_vulnerable_package_source_lambda_layer_arn.dart';
import '../filter_filter_criteria_vulnerable_package_source_layer_hash/filter_filter_criteria_vulnerable_package_source_layer_hash.dart';
import '../filter_filter_criteria_vulnerable_package_version/filter_filter_criteria_vulnerable_package_version.dart';

class FilterFilterCriteriaVulnerablePackage {
  /// (Optional) The architecture of the package. Documented below.
  final FilterFilterCriteriaVulnerablePackageArchitecture? architecture;

  /// (Optional) The epoch of the package. Documented below.
  final List<FilterFilterCriteriaVulnerablePackageEpoch>? epoches;

  /// (Optional) The name of the package. Documented below.
  final FilterFilterCriteriaVulnerablePackageFilePath? filePath;

  /// Name of the filter.
  final FilterFilterCriteriaVulnerablePackageName? name;

  /// (Optional) The release of the package. Documented below.
  final FilterFilterCriteriaVulnerablePackageRelease? release;

  /// (Optional) The ARN of the package's source lambda layer. Documented below.
  final FilterFilterCriteriaVulnerablePackageSourceLambdaLayerArn?
      sourceLambdaLayerArn;

  /// (Optional) The source layer hash of the package. Documented below.
  final FilterFilterCriteriaVulnerablePackageSourceLayerHash? sourceLayerHash;

  /// (Optional) The version of the package. Documented below.
  final FilterFilterCriteriaVulnerablePackageVersion? version;

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
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue.toMap();
    }
    final epochesValue = epoches;
    if (epochesValue != null) {
      map['epoches'] = Input.encodeList<
          FilterFilterCriteriaVulnerablePackageEpoch,
          Map<String, dynamic>>(epochesValue, (value) => value.toMap());
    }
    final filePathValue = filePath;
    if (filePathValue != null) {
      map['filePath'] = filePathValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue.toMap();
    }
    final releaseValue = release;
    if (releaseValue != null) {
      map['release'] = releaseValue.toMap();
    }
    final sourceLambdaLayerArnValue = sourceLambdaLayerArn;
    if (sourceLambdaLayerArnValue != null) {
      map['sourceLambdaLayerArn'] = sourceLambdaLayerArnValue.toMap();
    }
    final sourceLayerHashValue = sourceLayerHash;
    if (sourceLayerHashValue != null) {
      map['sourceLayerHash'] = sourceLayerHashValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue.toMap();
    }
    return map;
  }

  factory FilterFilterCriteriaVulnerablePackage.fromMap(
      Map<String, dynamic> map) {
    return FilterFilterCriteriaVulnerablePackage(
      architecture: map['architecture'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageArchitecture.fromMap(
              (map['architecture'] as Map).cast<String, dynamic>()),
      epoches: map['epoches'] == null
          ? null
          : Input.decodeList<FilterFilterCriteriaVulnerablePackageEpoch>(
              map['epoches'],
              (value) => FilterFilterCriteriaVulnerablePackageEpoch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filePath: map['filePath'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageFilePath.fromMap(
              (map['filePath'] as Map).cast<String, dynamic>()),
      name: map['name'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageName.fromMap(
              (map['name'] as Map).cast<String, dynamic>()),
      release: map['release'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageRelease.fromMap(
              (map['release'] as Map).cast<String, dynamic>()),
      sourceLambdaLayerArn: map['sourceLambdaLayerArn'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageSourceLambdaLayerArn.fromMap(
              (map['sourceLambdaLayerArn'] as Map).cast<String, dynamic>()),
      sourceLayerHash: map['sourceLayerHash'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageSourceLayerHash.fromMap(
              (map['sourceLayerHash'] as Map).cast<String, dynamic>()),
      version: map['version'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageVersion.fromMap(
              (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
