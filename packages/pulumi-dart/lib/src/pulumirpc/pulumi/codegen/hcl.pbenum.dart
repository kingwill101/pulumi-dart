// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/hcl.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// DiagnosticSeverity is the severity level of a diagnostic message.
class DiagnosticSeverity extends $pb.ProtobufEnum {
  /// DIAG_INVALID is the invalid zero value of DiagnosticSeverity
  static const DiagnosticSeverity DIAG_INVALID =
      DiagnosticSeverity._(0, _omitEnumNames ? '' : 'DIAG_INVALID');

  /// DIAG_ERROR indicates that the problem reported by a diagnostic prevents
  /// further progress in parsing and/or evaluating the subject.
  static const DiagnosticSeverity DIAG_ERROR =
      DiagnosticSeverity._(1, _omitEnumNames ? '' : 'DIAG_ERROR');

  /// DIAG_WARNING indicates that the problem reported by a diagnostic warrants
  /// user attention but does not prevent further progress. It is most
  /// commonly used for showing deprecation notices.
  static const DiagnosticSeverity DIAG_WARNING =
      DiagnosticSeverity._(2, _omitEnumNames ? '' : 'DIAG_WARNING');

  static const $core.List<DiagnosticSeverity> values = <DiagnosticSeverity>[
    DIAG_INVALID,
    DIAG_ERROR,
    DIAG_WARNING,
  ];

  static final $core.List<DiagnosticSeverity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static DiagnosticSeverity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DiagnosticSeverity._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
