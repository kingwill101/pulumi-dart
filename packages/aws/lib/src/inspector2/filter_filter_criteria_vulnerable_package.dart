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
      'architecture': ?architecture == null ? null : architecture!.toMap(),
      'epoches': ?epoches == null
          ? null
          : pulumi.Input.encodeList<
              FilterFilterCriteriaVulnerablePackageEpoch,
              Map<String, dynamic>
            >(epoches!, (value) => value.toMap()),
      'filePath': ?filePath == null ? null : filePath!.toMap(),
      'name': ?name == null ? null : name!.toMap(),
      'release': ?release == null ? null : release!.toMap(),
      'sourceLambdaLayerArn': ?sourceLambdaLayerArn == null
          ? null
          : sourceLambdaLayerArn!.toMap(),
      'sourceLayerHash': ?sourceLayerHash == null
          ? null
          : sourceLayerHash!.toMap(),
      'version': ?version == null ? null : version!.toMap(),
    };
  }

  factory FilterFilterCriteriaVulnerablePackage.fromMap(
    Map<String, dynamic> map,
  ) {
    return FilterFilterCriteriaVulnerablePackage(
      architecture: map['architecture'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageArchitecture.fromMap(
              (map['architecture'] as Map).cast<String, dynamic>(),
            ),
      epoches: map['epoches'] == null
          ? null
          : pulumi.Input.decodeList<FilterFilterCriteriaVulnerablePackageEpoch>(
              map['epoches'],
              (value) => FilterFilterCriteriaVulnerablePackageEpoch.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      filePath: map['filePath'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageFilePath.fromMap(
              (map['filePath'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageName.fromMap(
              (map['name'] as Map).cast<String, dynamic>(),
            ),
      release: map['release'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageRelease.fromMap(
              (map['release'] as Map).cast<String, dynamic>(),
            ),
      sourceLambdaLayerArn: map['sourceLambdaLayerArn'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageSourceLambdaLayerArn.fromMap(
              (map['sourceLambdaLayerArn'] as Map).cast<String, dynamic>(),
            ),
      sourceLayerHash: map['sourceLayerHash'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageSourceLayerHash.fromMap(
              (map['sourceLayerHash'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null
          ? null
          : FilterFilterCriteriaVulnerablePackageVersion.fromMap(
              (map['version'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
