// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enterprise_crm_eventbus_proto_property_entry_response.dart';

/// LINT.IfChange This message is used for storing key value pair properties for each Event / Task in the EventBus.
class EnterpriseCrmEventbusProtoEventBusPropertiesResponse {
  /// An unordered list of property entries.
  final List<EnterpriseCrmEventbusProtoPropertyEntryResponse> properties;

  EnterpriseCrmEventbusProtoEventBusPropertiesResponse({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['properties'] = Input.encodeList<
        EnterpriseCrmEventbusProtoPropertyEntryResponse,
        Map<String, dynamic>>(properties, (value) => value.toMap());
    return map;
  }

  factory EnterpriseCrmEventbusProtoEventBusPropertiesResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoEventBusPropertiesResponse(
      properties:
          Input.decodeList<EnterpriseCrmEventbusProtoPropertyEntryResponse>(
              map['properties'],
              (value) =>
                  EnterpriseCrmEventbusProtoPropertyEntryResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
