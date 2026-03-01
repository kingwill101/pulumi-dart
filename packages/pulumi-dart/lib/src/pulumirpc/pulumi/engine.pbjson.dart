// This is a generated file - do not edit.
//
// Generated from pulumi/engine.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use logSeverityDescriptor instead')
const LogSeverity$json = {
  '1': 'LogSeverity',
  '2': [
    {'1': 'DEBUG', '2': 0},
    {'1': 'INFO', '2': 1},
    {'1': 'WARNING', '2': 2},
    {'1': 'ERROR', '2': 3},
  ],
};

/// Descriptor for `LogSeverity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List logSeverityDescriptor = $convert.base64Decode(
    'CgtMb2dTZXZlcml0eRIJCgVERUJVRxAAEggKBElORk8QARILCgdXQVJOSU5HEAISCQoFRVJST1'
    'IQAw==');

@$core.Deprecated('Use logRequestDescriptor instead')
const LogRequest$json = {
  '1': 'LogRequest',
  '2': [
    {
      '1': 'severity',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.LogSeverity',
      '10': 'severity'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'urn', '3': 3, '4': 1, '5': 9, '10': 'urn'},
    {'1': 'streamId', '3': 4, '4': 1, '5': 5, '10': 'streamId'},
    {'1': 'ephemeral', '3': 5, '4': 1, '5': 8, '10': 'ephemeral'},
  ],
};

/// Descriptor for `LogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logRequestDescriptor = $convert.base64Decode(
    'CgpMb2dSZXF1ZXN0EjIKCHNldmVyaXR5GAEgASgOMhYucHVsdW1pcnBjLkxvZ1NldmVyaXR5Ug'
    'hzZXZlcml0eRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEhAKA3VybhgDIAEoCVIDdXJuEhoK'
    'CHN0cmVhbUlkGAQgASgFUghzdHJlYW1JZBIcCgllcGhlbWVyYWwYBSABKAhSCWVwaGVtZXJhbA'
    '==');

@$core.Deprecated('Use getRootResourceRequestDescriptor instead')
const GetRootResourceRequest$json = {
  '1': 'GetRootResourceRequest',
};

/// Descriptor for `GetRootResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRootResourceRequestDescriptor =
    $convert.base64Decode('ChZHZXRSb290UmVzb3VyY2VSZXF1ZXN0');

@$core.Deprecated('Use getRootResourceResponseDescriptor instead')
const GetRootResourceResponse$json = {
  '1': 'GetRootResourceResponse',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
  ],
};

/// Descriptor for `GetRootResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRootResourceResponseDescriptor =
    $convert.base64Decode(
        'ChdHZXRSb290UmVzb3VyY2VSZXNwb25zZRIQCgN1cm4YASABKAlSA3Vybg==');

@$core.Deprecated('Use setRootResourceRequestDescriptor instead')
const SetRootResourceRequest$json = {
  '1': 'SetRootResourceRequest',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
  ],
};

/// Descriptor for `SetRootResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRootResourceRequestDescriptor = $convert
    .base64Decode('ChZTZXRSb290UmVzb3VyY2VSZXF1ZXN0EhAKA3VybhgBIAEoCVIDdXJu');

@$core.Deprecated('Use setRootResourceResponseDescriptor instead')
const SetRootResourceResponse$json = {
  '1': 'SetRootResourceResponse',
};

/// Descriptor for `SetRootResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRootResourceResponseDescriptor =
    $convert.base64Decode('ChdTZXRSb290UmVzb3VyY2VSZXNwb25zZQ==');

@$core.Deprecated('Use startDebuggingRequestDescriptor instead')
const StartDebuggingRequest$json = {
  '1': 'StartDebuggingRequest',
  '2': [
    {
      '1': 'config',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'config'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `StartDebuggingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startDebuggingRequestDescriptor = $convert.base64Decode(
    'ChVTdGFydERlYnVnZ2luZ1JlcXVlc3QSLwoGY29uZmlnGAEgASgLMhcuZ29vZ2xlLnByb3RvYn'
    'VmLlN0cnVjdFIGY29uZmlnEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use requirePulumiVersionRequestDescriptor instead')
const RequirePulumiVersionRequest$json = {
  '1': 'RequirePulumiVersionRequest',
  '2': [
    {
      '1': 'pulumi_version_range',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'pulumiVersionRange'
    },
  ],
};

/// Descriptor for `RequirePulumiVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requirePulumiVersionRequestDescriptor =
    $convert.base64Decode(
        'ChtSZXF1aXJlUHVsdW1pVmVyc2lvblJlcXVlc3QSMAoUcHVsdW1pX3ZlcnNpb25fcmFuZ2UYAS'
        'ABKAlSEnB1bHVtaVZlcnNpb25SYW5nZQ==');

@$core.Deprecated('Use requirePulumiVersionResponseDescriptor instead')
const RequirePulumiVersionResponse$json = {
  '1': 'RequirePulumiVersionResponse',
};

/// Descriptor for `RequirePulumiVersionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requirePulumiVersionResponseDescriptor =
    $convert.base64Decode('ChxSZXF1aXJlUHVsdW1pVmVyc2lvblJlc3BvbnNl');
