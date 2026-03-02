// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_scan_findings_summary_response.dart';
import 'image_scan_status_response.dart';

/// Definition of awsEcrImageDetail
class AwsEcrImageDetailPropertiesResponse {
  /// <p>The artifact media type of the image.</p>
  final pulumi.Input<String>? artifactMediaType;
  /// <p>The <code>sha256</code> digest of the image manifest.</p>
  final pulumi.Input<String>? imageDigest;
  /// <p>The media type of the image manifest.</p>
  final pulumi.Input<String>? imageManifestMediaType;
  /// <p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. </p>
  final pulumi.Input<String>? imagePushedAt;
  /// <p>A summary of the last completed image scan.</p>
  final pulumi.Input<ImageScanFindingsSummaryResponse>? imageScanFindingsSummary;
  /// <p>The current state of the scan.</p>
  final pulumi.Input<ImageScanStatusResponse>? imageScanStatus;
  /// <p>The size, in bytes, of the image in the repository.</p> <p>If the image is a manifest list, this will be the max size of all manifests in the list.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
  final pulumi.Input<double>? imageSizeInBytes;
  /// <p>The list of tags associated with this image.</p>
  final pulumi.Input<List<String>>? imageTags;
  /// <p>The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded the last image pull.</p> <note> <p>Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For example, if you pull an image once a day then the <code>lastRecordedPullTime</code> timestamp will indicate the exact time that the image was last pulled. However, if you pull an image once an hour, because Amazon ECR refreshes the <code>lastRecordedPullTime</code> timestamp at least once every 24 hours, the result may not be the exact time that the image was last pulled.</p> </note>
  final pulumi.Input<String>? lastRecordedPullTime;
  /// <p>The Amazon Web Services account ID associated with the registry to which this image belongs.</p>
  final pulumi.Input<String>? registryId;
  /// <p>The name of the repository to which this image belongs.</p>
  final pulumi.Input<String>? repositoryName;

  /// Creates a new [AwsEcrImageDetailPropertiesResponse].
  /// [artifactMediaType] <p>The artifact media type of the image.</p>
  /// [imageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
  /// [imageManifestMediaType] <p>The media type of the image manifest.</p>
  /// [imagePushedAt] <p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. </p>
  /// [imageScanFindingsSummary] <p>A summary of the last completed image scan.</p>
  /// [imageScanStatus] <p>The current state of the scan.</p>
  /// [imageSizeInBytes] <p>The size, in bytes, of the image in the repository.</p> <p>If the image is a manifest list, this will be the max size of all manifests in the list.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
  /// [imageTags] <p>The list of tags associated with this image.</p>
  /// [lastRecordedPullTime] <p>The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded the last image pull.</p> <note> <p>Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For example, if you pull an image once a day then the <code>lastRecordedPullTime</code> timestamp will indicate the exact time that the image was last pulled. However, if you pull an image once an hour, because Amazon ECR refreshes the <code>lastRecordedPullTime</code> timestamp at least once every 24 hours, the result may not be the exact time that the image was last pulled.</p> </note>
  /// [registryId] <p>The Amazon Web Services account ID associated with the registry to which this image belongs.</p>
  /// [repositoryName] <p>The name of the repository to which this image belongs.</p>
  AwsEcrImageDetailPropertiesResponse({
    this.artifactMediaType,
    this.imageDigest,
    this.imageManifestMediaType,
    this.imagePushedAt,
    this.imageScanFindingsSummary,
    this.imageScanStatus,
    this.imageSizeInBytes,
    this.imageTags,
    this.lastRecordedPullTime,
    this.registryId,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactMediaType': ?artifactMediaType,
      'imageDigest': ?imageDigest,
      'imageManifestMediaType': ?imageManifestMediaType,
      'imagePushedAt': ?imagePushedAt,
      'imageScanFindingsSummary': ?pulumi.Input.mapOptionalInputValue<ImageScanFindingsSummaryResponse, Map<String, dynamic>>(imageScanFindingsSummary, (value) => value.toMap()),
      'imageScanStatus': ?pulumi.Input.mapOptionalInputValue<ImageScanStatusResponse, Map<String, dynamic>>(imageScanStatus, (value) => value.toMap()),
      'imageSizeInBytes': ?imageSizeInBytes,
      'imageTags': ?imageTags,
      'lastRecordedPullTime': ?lastRecordedPullTime,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory AwsEcrImageDetailPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEcrImageDetailPropertiesResponse(
      artifactMediaType: map['artifactMediaType'] == null ? null : (map['artifactMediaType'] as String).input(),
      imageDigest: map['imageDigest'] == null ? null : (map['imageDigest'] as String).input(),
      imageManifestMediaType: map['imageManifestMediaType'] == null ? null : (map['imageManifestMediaType'] as String).input(),
      imagePushedAt: map['imagePushedAt'] == null ? null : (map['imagePushedAt'] as String).input(),
      imageScanFindingsSummary: map['imageScanFindingsSummary'] == null ? null : (ImageScanFindingsSummaryResponse.fromMap((map['imageScanFindingsSummary'] as Map).cast<String, dynamic>())).input(),
      imageScanStatus: map['imageScanStatus'] == null ? null : (ImageScanStatusResponse.fromMap((map['imageScanStatus'] as Map).cast<String, dynamic>())).input(),
      imageSizeInBytes: map['imageSizeInBytes'] == null ? null : (map['imageSizeInBytes'] as double).input(),
      imageTags: map['imageTags'] == null ? null : ((map['imageTags'] as List).cast<String>()).input(),
      lastRecordedPullTime: map['lastRecordedPullTime'] == null ? null : (map['lastRecordedPullTime'] as String).input(),
      registryId: map['registryId'] == null ? null : (map['registryId'] as String).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName'] as String).input(),
    );
  }
}

