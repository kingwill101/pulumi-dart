// This is a generated file - do not edit.
//
// Generated from pulumi/errors.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ErrorCause extends $pb.GeneratedMessage {
  factory ErrorCause({
    $core.String? message,
    $core.String? stackTrace,
  }) {
    final result = create();
    if (message != null) result.message = message;
    if (stackTrace != null) result.stackTrace = stackTrace;
    return result;
  }

  ErrorCause._();

  factory ErrorCause.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ErrorCause.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ErrorCause',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOS(2, _omitFieldNames ? '' : 'stackTrace', protoName: 'stackTrace')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorCause clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ErrorCause copyWith(void Function(ErrorCause) updates) =>
      super.copyWith((message) => updates(message as ErrorCause)) as ErrorCause;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorCause create() => ErrorCause._();
  @$core.override
  ErrorCause createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ErrorCause getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ErrorCause>(create);
  static ErrorCause? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get stackTrace => $_getSZ(1);
  @$pb.TagNumber(2)
  set stackTrace($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStackTrace() => $_has(1);
  @$pb.TagNumber(2)
  void clearStackTrace() => $_clearField(2);
}

/// A single invalid input property.
class InputPropertiesError_PropertyError extends $pb.GeneratedMessage {
  factory InputPropertiesError_PropertyError({
    $core.String? propertyPath,
    $core.String? reason,
  }) {
    final result = create();
    if (propertyPath != null) result.propertyPath = propertyPath;
    if (reason != null) result.reason = reason;
    return result;
  }

  InputPropertiesError_PropertyError._();

  factory InputPropertiesError_PropertyError.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InputPropertiesError_PropertyError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InputPropertiesError.PropertyError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertyPath')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InputPropertiesError_PropertyError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InputPropertiesError_PropertyError copyWith(
          void Function(InputPropertiesError_PropertyError) updates) =>
      super.copyWith((message) =>
              updates(message as InputPropertiesError_PropertyError))
          as InputPropertiesError_PropertyError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InputPropertiesError_PropertyError create() =>
      InputPropertiesError_PropertyError._();
  @$core.override
  InputPropertiesError_PropertyError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InputPropertiesError_PropertyError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InputPropertiesError_PropertyError>(
          create);
  static InputPropertiesError_PropertyError? _defaultInstance;

  /// The path to the property that is invalid.
  @$pb.TagNumber(1)
  $core.String get propertyPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyPath($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPropertyPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyPath() => $_clearField(1);

  /// The reason the property is invalid.
  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

/// An error that can be returned from a component provider and includes details of the
/// error, which can be multiple properties.
class InputPropertiesError extends $pb.GeneratedMessage {
  factory InputPropertiesError({
    $core.Iterable<InputPropertiesError_PropertyError>? errors,
  }) {
    final result = create();
    if (errors != null) result.errors.addAll(errors);
    return result;
  }

  InputPropertiesError._();

  factory InputPropertiesError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InputPropertiesError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InputPropertiesError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<InputPropertiesError_PropertyError>(
        1, _omitFieldNames ? '' : 'errors',
        subBuilder: InputPropertiesError_PropertyError.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InputPropertiesError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InputPropertiesError copyWith(void Function(InputPropertiesError) updates) =>
      super.copyWith((message) => updates(message as InputPropertiesError))
          as InputPropertiesError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InputPropertiesError create() => InputPropertiesError._();
  @$core.override
  InputPropertiesError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InputPropertiesError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InputPropertiesError>(create);
  static InputPropertiesError? _defaultInstance;

  /// The list of invalid input properties.
  @$pb.TagNumber(1)
  $pb.PbList<InputPropertiesError_PropertyError> get errors => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
