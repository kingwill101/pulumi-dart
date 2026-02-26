// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../subscriber_source_custom_log_source_resource_attribute/subscriber_source_custom_log_source_resource_attribute.dart';
import '../subscriber_source_custom_log_source_resource_provider/subscriber_source_custom_log_source_resource_provider.dart';

class SubscriberSourceCustomLogSourceResource {
  /// The attributes of the third-party custom source. See <span pulumi-lang-nodejs="`attributes`" pulumi-lang-dotnet="`Attributes`" pulumi-lang-go="`attributes`" pulumi-lang-python="`attributes`" pulumi-lang-yaml="`attributes`" pulumi-lang-java="`attributes`">`attributes`</span> Block below.
  final List<SubscriberSourceCustomLogSourceResourceAttribute>? attributes;

  /// The details of the log provider for the third-party custom source. See <span pulumi-lang-nodejs="`provider`" pulumi-lang-dotnet="`Provider`" pulumi-lang-go="`provider`" pulumi-lang-python="`provider`" pulumi-lang-yaml="`provider`" pulumi-lang-java="`provider`">`provider`</span> Block below.
  final List<SubscriberSourceCustomLogSourceResourceProvider>? providers;

  /// The name for a third-party custom source. This must be a Regionally unique value.
  final String sourceName;

  /// The version for a third-party custom source. This must be a Regionally unique value.
  final String? sourceVersion;

  SubscriberSourceCustomLogSourceResource({
    this.attributes,
    this.providers,
    required this.sourceName,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = Input.encodeList<
          SubscriberSourceCustomLogSourceResourceAttribute,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    final providersValue = providers;
    if (providersValue != null) {
      map['providers'] = Input.encodeList<
          SubscriberSourceCustomLogSourceResourceProvider,
          Map<String, dynamic>>(providersValue, (value) => value.toMap());
    }
    map['sourceName'] = sourceName;
    final sourceVersionValue = sourceVersion;
    if (sourceVersionValue != null) {
      map['sourceVersion'] = sourceVersionValue;
    }
    return map;
  }

  factory SubscriberSourceCustomLogSourceResource.fromMap(
      Map<String, dynamic> map) {
    return SubscriberSourceCustomLogSourceResource(
      attributes: map['attributes'] == null
          ? null
          : Input.decodeList<SubscriberSourceCustomLogSourceResourceAttribute>(
              map['attributes'],
              (value) =>
                  SubscriberSourceCustomLogSourceResourceAttribute.fromMap(
                      (value as Map).cast<String, dynamic>())),
      providers: map['providers'] == null
          ? null
          : Input.decodeList<SubscriberSourceCustomLogSourceResourceProvider>(
              map['providers'],
              (value) =>
                  SubscriberSourceCustomLogSourceResourceProvider.fromMap(
                      (value as Map).cast<String, dynamic>())),
      sourceName: map['sourceName'] as String,
      sourceVersion:
          map['sourceVersion'] == null ? null : map['sourceVersion'] as String,
    );
  }
}
