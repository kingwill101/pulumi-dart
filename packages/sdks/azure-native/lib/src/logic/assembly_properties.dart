// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';

/// The assembly properties definition.
class AssemblyProperties {
  /// The assembly culture.
  final pulumi.Input<String>? assemblyCulture;
  /// The assembly name.
  final pulumi.Input<String> assemblyName;
  /// The assembly public key token.
  final pulumi.Input<String>? assemblyPublicKeyToken;
  /// The assembly version.
  final pulumi.Input<String>? assemblyVersion;
  /// The artifact changed time.
  final pulumi.Input<String>? changedTime;
  final pulumi.Input<dynamic>? content;
  /// The content link.
  final pulumi.Input<ContentLink>? contentLink;
  /// The content type.
  final pulumi.Input<String>? contentType;
  /// The artifact creation time.
  final pulumi.Input<String>? createdTime;
  final pulumi.Input<dynamic>? metadata;

  /// Creates a new [AssemblyProperties].
  /// [assemblyCulture] The assembly culture.
  /// [assemblyName] The assembly name.
  /// [assemblyPublicKeyToken] The assembly public key token.
  /// [assemblyVersion] The assembly version.
  /// [changedTime] The artifact changed time.
  /// [content] Optional.
  /// [contentLink] The content link.
  /// [contentType] The content type.
  /// [createdTime] The artifact creation time.
  /// [metadata] Optional.
  const AssemblyProperties({
    this.assemblyCulture,
    required this.assemblyName,
    this.assemblyPublicKeyToken,
    this.assemblyVersion,
    this.changedTime,
    this.content,
    this.contentLink,
    this.contentType,
    this.createdTime,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyCulture': ?assemblyCulture,
      'assemblyName': assemblyName,
      'assemblyPublicKeyToken': ?assemblyPublicKeyToken,
      'assemblyVersion': ?assemblyVersion,
      'changedTime': ?changedTime,
      'content': ?content,
      'contentLink': ?pulumi.Input.mapOptionalInputValue<ContentLink, Map<String, dynamic>>(contentLink, (value) => value.toMap()),
      'contentType': ?contentType,
      'createdTime': ?createdTime,
      'metadata': ?metadata,
    };
  }

  factory AssemblyProperties.fromMap(Map<String, dynamic> map) {
    return AssemblyProperties(
      assemblyCulture: (() { final guardedValue = map['assemblyCulture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assemblyName: pulumi.Input.fromValue(map['assemblyName'] as String),
      assemblyPublicKeyToken: (() { final guardedValue = map['assemblyPublicKeyToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assemblyVersion: (() { final guardedValue = map['assemblyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      contentLink: (() { final guardedValue = map['contentLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
