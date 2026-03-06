// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsIamServerCertificate
class AwsIamServerCertificateProperties {
  /// Amazon Resource Name (ARN) of the server certificate
  final pulumi.Input<String>? arn;
  /// Property certificateBody
  final pulumi.Input<String>? certificateBody;
  /// Property certificateChain
  final pulumi.Input<String>? certificateChain;
  /// Property path
  final pulumi.Input<String>? path;
  /// Property privateKey
  final pulumi.Input<String>? privateKey;
  /// Property serverCertificateName
  final pulumi.Input<String>? serverCertificateName;
  /// Property tags
  final pulumi.Input<List<Tag>>? tags;

  /// Creates a new [AwsIamServerCertificateProperties].
  /// [arn] Amazon Resource Name (ARN) of the server certificate
  /// [certificateBody] Property certificateBody
  /// [certificateChain] Property certificateChain
  /// [path] Property path
  /// [privateKey] Property privateKey
  /// [serverCertificateName] Property serverCertificateName
  /// [tags] Property tags
  const AwsIamServerCertificateProperties({
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
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsIamServerCertificateProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamServerCertificateProperties(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateBody: (() { final guardedValue = map['certificateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificateName: (() { final guardedValue = map['serverCertificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

