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
