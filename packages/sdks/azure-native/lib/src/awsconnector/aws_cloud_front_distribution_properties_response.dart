// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_config_response.dart';
import 'tag_response.dart';

/// Definition of awsCloudFrontDistribution
class AwsCloudFrontDistributionPropertiesResponse {
  /// The distribution's configuration. A distribution configuration.
  final pulumi.Input<DistributionConfigResponse?>? distributionConfig;
  /// Property domainName
  final pulumi.Input<String?>? domainName;
  /// Property id
  final pulumi.Input<String?>? id;
  /// A complex type that contains zero or more ``Tag`` elements.
  final pulumi.Input<List<TagResponse>?>? tags;

  /// Creates a new [AwsCloudFrontDistributionPropertiesResponse].
  /// [distributionConfig] The distribution's configuration. A distribution configuration.
  /// [domainName] Property domainName
  /// [id] Property id
  /// [tags] A complex type that contains zero or more ``Tag`` elements.
  const AwsCloudFrontDistributionPropertiesResponse({
    this.distributionConfig,
    this.domainName,
    this.id,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionConfig': ?pulumi.Input.mapOptionalInputValue<DistributionConfigResponse, Map<String, dynamic>>(distributionConfig, (value) => value.toMap()),
      'domainName': ?domainName,
      'id': ?id,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsCloudFrontDistributionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCloudFrontDistributionPropertiesResponse(
      distributionConfig: (() { final guardedValue = map['distributionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
