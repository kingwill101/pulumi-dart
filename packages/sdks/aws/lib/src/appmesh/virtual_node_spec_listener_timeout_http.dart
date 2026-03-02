// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_http_idle.dart';
import 'virtual_node_spec_listener_timeout_http_per_request.dart';

class VirtualNodeSpecListenerTimeoutHttp {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttpIdle>? idle;
  /// Per request timeout.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttpPerRequest>? perRequest;

  /// Creates a new [VirtualNodeSpecListenerTimeoutHttp].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  VirtualNodeSpecListenerTimeoutHttp({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttpIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
      'perRequest': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttpPerRequest, Map<String, dynamic>>(perRequest, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeoutHttp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp(
      idle: map['idle'] == null ? null : ((VirtualNodeSpecListenerTimeoutHttpIdle.fromMap((map['idle']! as Map).cast<String, dynamic>())).input()).input(),
      perRequest: map['perRequest'] == null ? null : ((VirtualNodeSpecListenerTimeoutHttpPerRequest.fromMap((map['perRequest']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

