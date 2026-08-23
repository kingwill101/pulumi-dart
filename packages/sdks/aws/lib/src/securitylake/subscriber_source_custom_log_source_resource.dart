// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_source_custom_log_source_resource_attribute.dart';
import 'subscriber_source_custom_log_source_resource_provider.dart';

class SubscriberSourceCustomLogSourceResource {
  /// The attributes of the third-party custom source. See `attributes` Block below.
  final pulumi.Input<List<SubscriberSourceCustomLogSourceResourceAttribute>>? attributes;
  /// The details of the log provider for the third-party custom source. See `provider` Block below.
  final pulumi.Input<List<SubscriberSourceCustomLogSourceResourceProvider>>? providers;
  /// The name for a third-party custom source. This must be a Regionally unique value.
  final pulumi.Input<String> sourceName;
  /// The version for a third-party custom source. This must be a Regionally unique value.
  final pulumi.Input<String>? sourceVersion;

  /// Creates a new [SubscriberSourceCustomLogSourceResource].
  /// [attributes] The attributes of the third-party custom source. See `attributes` Block below.
  /// [providers] The details of the log provider for the third-party custom source. See `provider` Block below.
  /// [sourceName] The name for a third-party custom source. This must be a Regionally unique value.
  /// [sourceVersion] The version for a third-party custom source. This must be a Regionally unique value.
  const SubscriberSourceCustomLogSourceResource({
    this.attributes,
    this.providers,
    required this.sourceName,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<SubscriberSourceCustomLogSourceResourceAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<SubscriberSourceCustomLogSourceResourceAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'providers': ?pulumi.Input.mapOptionalInputValue<List<SubscriberSourceCustomLogSourceResourceProvider>, List<Map<String, dynamic>>>(providers, (value) => pulumi.Input.encodeList<SubscriberSourceCustomLogSourceResourceProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceName': sourceName,
      'sourceVersion': ?sourceVersion,
    };
  }

  factory SubscriberSourceCustomLogSourceResource.fromMap(Map<String, dynamic> map) {
    return SubscriberSourceCustomLogSourceResource(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriberSourceCustomLogSourceResourceAttribute>(guardedValue, (value) => SubscriberSourceCustomLogSourceResourceAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriberSourceCustomLogSourceResourceProvider>(guardedValue, (value) => SubscriberSourceCustomLogSourceResourceProvider.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
      sourceVersion: (() { final guardedValue = map['sourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
