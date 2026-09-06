// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_config.dart';
import 'tag.dart';

/// Definition of awsCloudFrontDistribution
class AwsCloudFrontDistributionProperties {
  /// The distribution's configuration. A distribution configuration.
  final pulumi.Input<DistributionConfig?>? distributionConfig;
  /// Property domainName
  final pulumi.Input<String?>? domainName;
  /// Property id
  final pulumi.Input<String?>? id;
  /// A complex type that contains zero or more ``Tag`` elements.
  final pulumi.Input<List<Tag>?>? tags;

  /// Creates a new [AwsCloudFrontDistributionProperties].
  /// [distributionConfig] The distribution's configuration. A distribution configuration.
  /// [domainName] Property domainName
  /// [id] Property id
  /// [tags] A complex type that contains zero or more ``Tag`` elements.
  const AwsCloudFrontDistributionProperties({
    this.distributionConfig,
    this.domainName,
    this.id,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionConfig': ?pulumi.Input.mapOptionalInputValue<DistributionConfig, Map<String, dynamic>>(distributionConfig, (value) => value.toMap()),
      'domainName': ?domainName,
      'id': ?id,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsCloudFrontDistributionProperties.fromMap(Map<String, dynamic> map) {
    return AwsCloudFrontDistributionProperties(
      distributionConfig: (() { final guardedValue = map['distributionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
