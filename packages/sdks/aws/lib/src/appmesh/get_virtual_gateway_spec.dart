// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default.dart';
import 'get_virtual_gateway_spec_listener.dart';
import 'get_virtual_gateway_spec_logging.dart';

class GetVirtualGatewaySpec {
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefault>> backendDefaults;
  final pulumi.Input<List<GetVirtualGatewaySpecListener>> listeners;
  final pulumi.Input<List<GetVirtualGatewaySpecLogging>> loggings;

  /// Creates a new [GetVirtualGatewaySpec].
  /// [backendDefaults] Required.
  /// [listeners] Required.
  /// [loggings] Required.
  GetVirtualGatewaySpec({
    required this.backendDefaults,
    required this.listeners,
    required this.loggings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendDefaults': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefault>, List<Map<String, dynamic>>>(backendDefaults, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefault, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listeners': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loggings': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecLogging>, List<Map<String, dynamic>>>(loggings, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecLogging, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpec.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpec(
      backendDefaults: (pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefault>(map['backendDefaults']!, (value) => GetVirtualGatewaySpecBackendDefault.fromMap((value as Map).cast<String, dynamic>()))).input(),
      listeners: (pulumi.Input.decodeList<GetVirtualGatewaySpecListener>(map['listeners']!, (value) => GetVirtualGatewaySpecListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loggings: (pulumi.Input.decodeList<GetVirtualGatewaySpecLogging>(map['loggings']!, (value) => GetVirtualGatewaySpecLogging.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

