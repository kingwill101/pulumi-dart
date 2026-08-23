// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_scan_findings_summary.dart';
import 'image_scan_status.dart';

/// Definition of awsEcrImageDetail
class AwsEcrImageDetailProperties {
  /// &lt;p&gt;The artifact media type of the image.&lt;/p&gt;
  final pulumi.Input<String>? artifactMediaType;
  /// &lt;p&gt;The &lt;code&gt;sha256&lt;/code&gt; digest of the image manifest.&lt;/p&gt;
  final pulumi.Input<String>? imageDigest;
  /// &lt;p&gt;The media type of the image manifest.&lt;/p&gt;
  final pulumi.Input<String>? imageManifestMediaType;
  /// &lt;p&gt;The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. &lt;/p&gt;
  final pulumi.Input<String>? imagePushedAt;
  /// &lt;p&gt;A summary of the last completed image scan.&lt;/p&gt;
  final pulumi.Input<ImageScanFindingsSummary>? imageScanFindingsSummary;
  /// &lt;p&gt;The current state of the scan.&lt;/p&gt;
  final pulumi.Input<ImageScanStatus>? imageScanStatus;
  /// &lt;p&gt;The size, in bytes, of the image in the repository.&lt;/p&gt; &lt;p&gt;If the image is a manifest list, this will be the max size of all manifests in the list.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the &lt;code&gt;docker images&lt;/code&gt; command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by &lt;a&gt;DescribeImages&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<double>? imageSizeInBytes;
  /// &lt;p&gt;The list of tags associated with this image.&lt;/p&gt;
  final pulumi.Input<List<String>>? imageTags;
  /// &lt;p&gt;The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded the last image pull.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For example, if you pull an image once a day then the &lt;code&gt;lastRecordedPullTime&lt;/code&gt; timestamp will indicate the exact time that the image was last pulled. However, if you pull an image once an hour, because Amazon ECR refreshes the &lt;code&gt;lastRecordedPullTime&lt;/code&gt; timestamp at least once every 24 hours, the result may not be the exact time that the image was last pulled.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String>? lastRecordedPullTime;
  /// &lt;p&gt;The Amazon Web Services account ID associated with the registry to which this image belongs.&lt;/p&gt;
  final pulumi.Input<String>? registryId;
  /// &lt;p&gt;The name of the repository to which this image belongs.&lt;/p&gt;
  final pulumi.Input<String>? repositoryName;

  /// Creates a new [AwsEcrImageDetailProperties].
  /// [artifactMediaType] &lt;p&gt;The artifact media type of the image.&lt;/p&gt;
  /// [imageDigest] &lt;p&gt;The &lt;code&gt;sha256&lt;/code&gt; digest of the image manifest.&lt;/p&gt;
  /// [imageManifestMediaType] &lt;p&gt;The media type of the image manifest.&lt;/p&gt;
  /// [imagePushedAt] &lt;p&gt;The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. &lt;/p&gt;
  /// [imageScanFindingsSummary] &lt;p&gt;A summary of the last completed image scan.&lt;/p&gt;
  /// [imageScanStatus] &lt;p&gt;The current state of the scan.&lt;/p&gt;
  /// [imageSizeInBytes] &lt;p&gt;The size, in bytes, of the image in the repository.&lt;/p&gt; &lt;p&gt;If the image is a manifest list, this will be the max size of all manifests in the list.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the &lt;code&gt;docker images&lt;/code&gt; command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by &lt;a&gt;DescribeImages&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
  /// [imageTags] &lt;p&gt;The list of tags associated with this image.&lt;/p&gt;
  /// [lastRecordedPullTime] &lt;p&gt;The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded the last image pull.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For example, if you pull an image once a day then the &lt;code&gt;lastRecordedPullTime&lt;/code&gt; timestamp will indicate the exact time that the image was last pulled. However, if you pull an image once an hour, because Amazon ECR refreshes the &lt;code&gt;lastRecordedPullTime&lt;/code&gt; timestamp at least once every 24 hours, the result may not be the exact time that the image was last pulled.&lt;/p&gt; &lt;/note&gt;
  /// [registryId] &lt;p&gt;The Amazon Web Services account ID associated with the registry to which this image belongs.&lt;/p&gt;
  /// [repositoryName] &lt;p&gt;The name of the repository to which this image belongs.&lt;/p&gt;
  const AwsEcrImageDetailProperties({
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
      'imageScanFindingsSummary': ?pulumi.Input.mapOptionalInputValue<ImageScanFindingsSummary, Map<String, dynamic>>(imageScanFindingsSummary, (value) => value.toMap()),
      'imageScanStatus': ?pulumi.Input.mapOptionalInputValue<ImageScanStatus, Map<String, dynamic>>(imageScanStatus, (value) => value.toMap()),
      'imageSizeInBytes': ?imageSizeInBytes,
      'imageTags': ?imageTags,
      'lastRecordedPullTime': ?lastRecordedPullTime,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory AwsEcrImageDetailProperties.fromMap(Map<String, dynamic> map) {
    return AwsEcrImageDetailProperties(
      artifactMediaType: (() { final guardedValue = map['artifactMediaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageDigest: (() { final guardedValue = map['imageDigest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageManifestMediaType: (() { final guardedValue = map['imageManifestMediaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagePushedAt: (() { final guardedValue = map['imagePushedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageScanFindingsSummary: (() { final guardedValue = map['imageScanFindingsSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageScanFindingsSummary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageScanStatus: (() { final guardedValue = map['imageScanStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageScanStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageSizeInBytes: (() { final guardedValue = map['imageSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      imageTags: (() { final guardedValue = map['imageTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastRecordedPullTime: (() { final guardedValue = map['lastRecordedPullTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
