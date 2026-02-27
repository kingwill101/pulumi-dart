// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_frontends_eventbus_proto_param_spec_entry_response.dart';

class EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse {
  final List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse>
      parameters;

  EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = Input.encodeList<
        EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse(
      parameters: Input.decodeList<
              EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse>(
          map['parameters'],
          (value) =>
              EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
