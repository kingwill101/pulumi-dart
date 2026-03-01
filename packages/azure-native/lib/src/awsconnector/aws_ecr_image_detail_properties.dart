// ignore_for_file: unused_element, unnecessary_cast

import 'image_scan_findings_summary.dart';
import 'image_scan_status.dart';

/// Definition of awsEcrImageDetail
class AwsEcrImageDetailProperties {
  /// <p>The artifact media type of the image.</p>
  final String? artifactMediaType;
  /// <p>The <code>sha256</code> digest of the image manifest.</p>
  final String? imageDigest;
  /// <p>The media type of the image manifest.</p>
  final String? imageManifestMediaType;
  /// <p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. </p>
  final String? imagePushedAt;
  /// <p>A summary of the last completed image scan.</p>
  final ImageScanFindingsSummary? imageScanFindingsSummary;
  /// <p>The current state of the scan.</p>
  final ImageScanStatus? imageScanStatus;
  /// <p>The size, in bytes, of the image in the repository.</p> <p>If the image is a manifest list, this will be the max size of all manifests in the list.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
  final double? imageSizeInBytes;
  /// <p>The list of tags associated with this image.</p>
  final List<String>? imageTags;
  /// <p>The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded the last image pull.</p> <note> <p>Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For example, if you pull an image once a day then the <code>lastRecordedPullTime</code> timestamp will indicate the exact time that the image was last pulled. However, if you pull an image once an hour, because Amazon ECR refreshes the <code>lastRecordedPullTime</code> timestamp at least once every 24 hours, the result may not be the exact time that the image was last pulled.</p> </note>
  final String? lastRecordedPullTime;
  /// <p>The Amazon Web Services account ID associated with the registry to which this image belongs.</p>
  final String? registryId;
  /// <p>The name of the repository to which this image belongs.</p>
  final String? repositoryName;

  /// Creates a new [AwsEcrImageDetailProperties].
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
  AwsEcrImageDetailProperties({
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
      'imageScanFindingsSummary': ?imageScanFindingsSummary == null ? null : imageScanFindingsSummary!.toMap(),
      'imageScanStatus': ?imageScanStatus == null ? null : imageScanStatus!.toMap(),
      'imageSizeInBytes': ?imageSizeInBytes,
      'imageTags': ?imageTags,
      'lastRecordedPullTime': ?lastRecordedPullTime,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory AwsEcrImageDetailProperties.fromMap(Map<String, dynamic> map) {
    return AwsEcrImageDetailProperties(
      artifactMediaType: map['artifactMediaType'] == null ? null : map['artifactMediaType'] as String,
      imageDigest: map['imageDigest'] == null ? null : map['imageDigest'] as String,
      imageManifestMediaType: map['imageManifestMediaType'] == null ? null : map['imageManifestMediaType'] as String,
      imagePushedAt: map['imagePushedAt'] == null ? null : map['imagePushedAt'] as String,
      imageScanFindingsSummary: map['imageScanFindingsSummary'] == null ? null : ImageScanFindingsSummary.fromMap((map['imageScanFindingsSummary'] as Map).cast<String, dynamic>()),
      imageScanStatus: map['imageScanStatus'] == null ? null : ImageScanStatus.fromMap((map['imageScanStatus'] as Map).cast<String, dynamic>()),
      imageSizeInBytes: map['imageSizeInBytes'] == null ? null : map['imageSizeInBytes'] as double,
      imageTags: map['imageTags'] == null ? null : (map['imageTags'] as List).cast<String>(),
      lastRecordedPullTime: map['lastRecordedPullTime'] == null ? null : map['lastRecordedPullTime'] as String,
      registryId: map['registryId'] == null ? null : map['registryId'] as String,
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
    );
  }
}

