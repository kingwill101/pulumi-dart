// This is a generated file - do not edit.
//
// Generated from pulumi/events.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// EventRequest contains a single engine event.
class EventRequest extends $pb.GeneratedMessage {
  factory EventRequest({
    $core.String? event,
  }) {
    final result = create();
    if (event != null) result.event = event;
    return result;
  }

  EventRequest._();

  factory EventRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EventRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'event')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventRequest copyWith(void Function(EventRequest) updates) =>
      super.copyWith((message) => updates(message as EventRequest))
          as EventRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventRequest create() => EventRequest._();
  @$core.override
  EventRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EventRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventRequest>(create);
  static EventRequest? _defaultInstance;

  /// event is a JSON-encoded string containing the engine event data.
  @$pb.TagNumber(1)
  $core.String get event => $_getSZ(0);
  @$pb.TagNumber(1)
  set event($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
