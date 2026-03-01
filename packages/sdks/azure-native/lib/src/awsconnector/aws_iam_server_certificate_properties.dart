// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsIamServerCertificate
class AwsIamServerCertificateProperties {
  /// Amazon Resource Name (ARN) of the server certificate
  final String? arn;
  /// Property certificateBody
  final String? certificateBody;
  /// Property certificateChain
  final String? certificateChain;
  /// Property path
  final String? path;
  /// Property privateKey
  final String? privateKey;
  /// Property serverCertificateName
  final String? serverCertificateName;
  /// Property tags
  final List<Tag>? tags;

  /// Creates a new [AwsIamServerCertificateProperties].
  /// [arn] Amazon Resource Name (ARN) of the server certificate
  /// [certificateBody] Property certificateBody
  /// [certificateChain] Property certificateChain
  /// [path] Property path
  /// [privateKey] Property privateKey
  /// [serverCertificateName] Property serverCertificateName
  /// [tags] Property tags
  AwsIamServerCertificateProperties({
    this.arn,
    this.certificateBody,
    this.certificateChain,
    this.path,
    this.privateKey,
    this.serverCertificateName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'path': ?path,
      'privateKey': ?privateKey,
      'serverCertificateName': ?serverCertificateName,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsIamServerCertificateProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamServerCertificateProperties(
      arn: map['arn'] == null ? null : map['arn'] as String,
      certificateBody: map['certificateBody'] == null ? null : map['certificateBody'] as String,
      certificateChain: map['certificateChain'] == null ? null : map['certificateChain'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      serverCertificateName: map['serverCertificateName'] == null ? null : map['serverCertificateName'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

