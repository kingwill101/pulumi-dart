// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_source.dart';

/// {@template pulumi_vod_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_vod_domain_domain_args_doc}
class DomainArgs {
  /// The URL that is used for health checks.
  final pulumi.Input<String>? checkUrl;
  /// The domain name for CDN that you want to add to ApsaraVideo VOD. Wildcard domain names are supported. Start the domain name with a period (.). Example: `.example.com.`.
  final pulumi.Input<String> domainName;
  /// This parameter is applicable to users of level 3 or higher in mainland China and users outside mainland China. Valid values:
  final pulumi.Input<String>? scope;
  /// The information about the address of the origin server. For more information about the Sources parameter, See the following `Block sources`.
  final pulumi.Input<List<DomainSource>> sources;
  /// A mapping of tags to assign to the resource.
  /// * `Key`: It can be up to 64 characters in length. It cannot be a null string.
  /// * `Value`: It can be up to 128 characters in length. It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// The top-level domain name.
  final pulumi.Input<String>? topLevelDomain;

  /// Creates a new [DomainArgs].
  /// [checkUrl] The URL that is used for health checks.
  /// [domainName] The domain name for CDN that you want to add to ApsaraVideo VOD. Wildcard domain names are supported. Start the domain name with a period (.). Example: `.example.com.`.
  /// [scope] This parameter is applicable to users of level 3 or higher in mainland China and users outside mainland China. Valid values:
  /// [sources] The information about the address of the origin server. For more information about the Sources parameter, See the following `Block sources`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topLevelDomain] The top-level domain name.
  DomainArgs({
    this.checkUrl,
    required this.domainName,
    this.scope,
    required this.sources,
    this.tags,
    this.topLevelDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkUrl': ?checkUrl,
      'domainName': domainName,
      'scope': ?scope,
      'sources': pulumi.Input.mapInputValue<List<DomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'topLevelDomain': ?topLevelDomain,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      checkUrl: (() { final guardedValue = map['checkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<DomainSource>(map['sources']!, (value) => DomainSource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topLevelDomain: (() { final guardedValue = map['topLevelDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

