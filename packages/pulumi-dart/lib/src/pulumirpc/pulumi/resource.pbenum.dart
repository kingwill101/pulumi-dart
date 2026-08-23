// This is a generated file - do not edit.
//
// Generated from pulumi/resource.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// ResourceMonitorFeature is a strongly typed monitor capability identifier.
///
/// The string IDs used by SupportsFeature are preserved for compatibility; new
/// clients should prefer these enum values from DeploymentInfo.
class ResourceMonitorFeature extends $pb.ProtobufEnum {
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_SECRETS =
      ResourceMonitorFeature._(
          0, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_SECRETS');
  static const ResourceMonitorFeature
      RESOURCE_MONITOR_FEATURE_RESOURCE_REFERENCES = ResourceMonitorFeature._(1,
          _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_RESOURCE_REFERENCES');
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_OUTPUT_VALUES =
      ResourceMonitorFeature._(
          2, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_OUTPUT_VALUES');
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_ALIAS_SPECS =
      ResourceMonitorFeature._(
          3, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_ALIAS_SPECS');
  static const ResourceMonitorFeature
      RESOURCE_MONITOR_FEATURE_REPLACEMENT_TRIGGER = ResourceMonitorFeature._(4,
          _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_REPLACEMENT_TRIGGER');
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_DELETED_WITH =
      ResourceMonitorFeature._(
          5, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_DELETED_WITH');
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_REPLACE_WITH =
      ResourceMonitorFeature._(
          6, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_REPLACE_WITH');
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_TRANSFORMS =
      ResourceMonitorFeature._(
          7, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_TRANSFORMS');
  static const ResourceMonitorFeature
      RESOURCE_MONITOR_FEATURE_INVOKE_TRANSFORMS = ResourceMonitorFeature._(8,
          _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_INVOKE_TRANSFORMS');
  static const ResourceMonitorFeature
      RESOURCE_MONITOR_FEATURE_PARAMETERIZATION = ResourceMonitorFeature._(
          9, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_PARAMETERIZATION');
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_RESOURCE_HOOKS =
      ResourceMonitorFeature._(
          10, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_RESOURCE_HOOKS');
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_ERROR_HOOKS =
      ResourceMonitorFeature._(
          11, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_ERROR_HOOKS');
  static const ResourceMonitorFeature
      RESOURCE_MONITOR_FEATURE_SENDS_OPTIONS_TO_HOOKS =
      ResourceMonitorFeature._(
          12,
          _omitEnumNames
              ? ''
              : 'RESOURCE_MONITOR_FEATURE_SENDS_OPTIONS_TO_HOOKS');

  /// The monitor accepts strings containing bytes that are not valid UTF-8, marshaled as objects carrying the raw
  /// string bytes signature and a base64 encoding of the string's bytes.
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_BYTE_STRING =
      ResourceMonitorFeature._(
          13, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_BYTE_STRING');

  /// The monitor accepts `dependsOn` on `ResourceInvokeRequest` and gates the invoke on the created-ness of the
  /// dependencies, returning `unknown` on `ResourceInvokeResponse` when they are pending.
  static const ResourceMonitorFeature
      RESOURCE_MONITOR_FEATURE_INVOKE_DEPENDS_ON = ResourceMonitorFeature._(14,
          _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_INVOKE_DEPENDS_ON');

  /// The monitor resolves an invoke's provider from the `parent` field on `ResourceInvokeRequest`.
  static const ResourceMonitorFeature RESOURCE_MONITOR_FEATURE_INVOKE_PARENT =
      ResourceMonitorFeature._(
          15, _omitEnumNames ? '' : 'RESOURCE_MONITOR_FEATURE_INVOKE_PARENT');

  static const $core.List<ResourceMonitorFeature> values =
      <ResourceMonitorFeature>[
    RESOURCE_MONITOR_FEATURE_SECRETS,
    RESOURCE_MONITOR_FEATURE_RESOURCE_REFERENCES,
    RESOURCE_MONITOR_FEATURE_OUTPUT_VALUES,
    RESOURCE_MONITOR_FEATURE_ALIAS_SPECS,
    RESOURCE_MONITOR_FEATURE_REPLACEMENT_TRIGGER,
    RESOURCE_MONITOR_FEATURE_DELETED_WITH,
    RESOURCE_MONITOR_FEATURE_REPLACE_WITH,
    RESOURCE_MONITOR_FEATURE_TRANSFORMS,
    RESOURCE_MONITOR_FEATURE_INVOKE_TRANSFORMS,
    RESOURCE_MONITOR_FEATURE_PARAMETERIZATION,
    RESOURCE_MONITOR_FEATURE_RESOURCE_HOOKS,
    RESOURCE_MONITOR_FEATURE_ERROR_HOOKS,
    RESOURCE_MONITOR_FEATURE_SENDS_OPTIONS_TO_HOOKS,
    RESOURCE_MONITOR_FEATURE_BYTE_STRING,
    RESOURCE_MONITOR_FEATURE_INVOKE_DEPENDS_ON,
    RESOURCE_MONITOR_FEATURE_INVOKE_PARENT,
  ];

  static final $core.List<ResourceMonitorFeature?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 15);
  static ResourceMonitorFeature? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ResourceMonitorFeature._(super.value, super.name);
}

class Result extends $pb.ProtobufEnum {
  static const Result SUCCESS = Result._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const Result FAIL = Result._(1, _omitEnumNames ? '' : 'FAIL');
  static const Result SKIP = Result._(2, _omitEnumNames ? '' : 'SKIP');

  static const $core.List<Result> values = <Result>[
    SUCCESS,
    FAIL,
    SKIP,
  ];

  static final $core.List<Result?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Result? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Result._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
