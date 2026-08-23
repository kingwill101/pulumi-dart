// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/mapper.proto.

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

@$core.Deprecated('Use getMappingRequestDescriptor instead')
const GetMappingRequest$json = {
  '1': 'GetMappingRequest',
  '2': [
    {'1': 'provider', '3': 1, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'pulumi_provider', '3': 2, '4': 1, '5': 9, '10': 'pulumiProvider'},
    {
      '1': 'parameterization_hint',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.codegen.MapperParameterizationHint',
      '10': 'parameterizationHint'
    },
    {'1': 'ecosystem', '3': 4, '4': 1, '5': 9, '10': 'ecosystem'},
  ],
};

/// Descriptor for `GetMappingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingRequestDescriptor = $convert.base64Decode(
    'ChFHZXRNYXBwaW5nUmVxdWVzdBIaCghwcm92aWRlchgBIAEoCVIIcHJvdmlkZXISJwoPcHVsdW'
    '1pX3Byb3ZpZGVyGAIgASgJUg5wdWx1bWlQcm92aWRlchJYChVwYXJhbWV0ZXJpemF0aW9uX2hp'
    'bnQYAyABKAsyIy5jb2RlZ2VuLk1hcHBlclBhcmFtZXRlcml6YXRpb25IaW50UhRwYXJhbWV0ZX'
    'JpemF0aW9uSGludBIcCgllY29zeXN0ZW0YBCABKAlSCWVjb3N5c3RlbQ==');

@$core.Deprecated('Use mapperParameterizationHintDescriptor instead')
const MapperParameterizationHint$json = {
  '1': 'MapperParameterizationHint',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `MapperParameterizationHint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapperParameterizationHintDescriptor =
    $convert.base64Decode(
        'ChpNYXBwZXJQYXJhbWV0ZXJpemF0aW9uSGludBISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3Zlcn'
        'Npb24YAiABKAlSB3ZlcnNpb24SFAoFdmFsdWUYAyABKAxSBXZhbHVl');

@$core.Deprecated('Use getMappingResponseDescriptor instead')
const GetMappingResponse$json = {
  '1': 'GetMappingResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `GetMappingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingResponseDescriptor = $convert
    .base64Decode('ChJHZXRNYXBwaW5nUmVzcG9uc2USEgoEZGF0YRgBIAEoDFIEZGF0YQ==');
