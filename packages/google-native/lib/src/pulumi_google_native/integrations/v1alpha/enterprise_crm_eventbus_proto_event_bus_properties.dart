// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_eventbus_proto_property_entry.dart';

/// LINT.IfChange This message is used for storing key value pair properties for each Event / Task in the EventBus.
class EnterpriseCrmEventbusProtoEventBusProperties {
  /// An unordered list of property entries.
  final List<EnterpriseCrmEventbusProtoPropertyEntry>? properties;

  EnterpriseCrmEventbusProtoEventBusProperties({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.encodeList<
          EnterpriseCrmEventbusProtoPropertyEntry,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoEventBusProperties.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoEventBusProperties(
      properties: map['properties'] == null
          ? null
          : Input.decodeList<EnterpriseCrmEventbusProtoPropertyEntry>(
              map['properties'],
              (value) => EnterpriseCrmEventbusProtoPropertyEntry.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
