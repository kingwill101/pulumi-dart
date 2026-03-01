// This is a generated file - do not edit.
//
// Generated from pulumi/converter.proto.

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

@$core.Deprecated('Use convertStateRequestDescriptor instead')
const ConvertStateRequest$json = {
  '1': 'ConvertStateRequest',
  '2': [
    {'1': 'mapper_target', '3': 1, '4': 1, '5': 9, '10': 'mapperTarget'},
    {'1': 'args', '3': 2, '4': 3, '5': 9, '10': 'args'},
  ],
};

/// Descriptor for `ConvertStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertStateRequestDescriptor = $convert.base64Decode(
    'ChNDb252ZXJ0U3RhdGVSZXF1ZXN0EiMKDW1hcHBlcl90YXJnZXQYASABKAlSDG1hcHBlclRhcm'
    'dldBISCgRhcmdzGAIgAygJUgRhcmdz');

@$core.Deprecated('Use resourceImportDescriptor instead')
const ResourceImport$json = {
  '1': 'ResourceImport',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'id', '3': 3, '4': 1, '5': 9, '10': 'id'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'pluginDownloadURL',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'pluginDownloadURL'
    },
    {'1': 'logical_name', '3': 6, '4': 1, '5': 9, '10': 'logicalName'},
    {'1': 'is_component', '3': 7, '4': 1, '5': 8, '10': 'isComponent'},
    {'1': 'is_remote', '3': 8, '4': 1, '5': 8, '10': 'isRemote'},
  ],
};

/// Descriptor for `ResourceImport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceImportDescriptor = $convert.base64Decode(
    'Cg5SZXNvdXJjZUltcG9ydBISCgR0eXBlGAEgASgJUgR0eXBlEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USDgoCaWQYAyABKAlSAmlkEhgKB3ZlcnNpb24YBCABKAlSB3ZlcnNpb24SLAoRcGx1Z2luRG93'
    'bmxvYWRVUkwYBSABKAlSEXBsdWdpbkRvd25sb2FkVVJMEiEKDGxvZ2ljYWxfbmFtZRgGIAEoCV'
    'ILbG9naWNhbE5hbWUSIQoMaXNfY29tcG9uZW50GAcgASgIUgtpc0NvbXBvbmVudBIbCglpc19y'
    'ZW1vdGUYCCABKAhSCGlzUmVtb3Rl');

@$core.Deprecated('Use convertStateResponseDescriptor instead')
const ConvertStateResponse$json = {
  '1': 'ConvertStateResponse',
  '2': [
    {
      '1': 'resources',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ResourceImport',
      '10': 'resources'
    },
    {
      '1': 'diagnostics',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.codegen.Diagnostic',
      '10': 'diagnostics'
    },
  ],
};

/// Descriptor for `ConvertStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertStateResponseDescriptor = $convert.base64Decode(
    'ChRDb252ZXJ0U3RhdGVSZXNwb25zZRI3CglyZXNvdXJjZXMYASADKAsyGS5wdWx1bWlycGMuUm'
    'Vzb3VyY2VJbXBvcnRSCXJlc291cmNlcxI/CgtkaWFnbm9zdGljcxgCIAMoCzIdLnB1bHVtaXJw'
    'Yy5jb2RlZ2VuLkRpYWdub3N0aWNSC2RpYWdub3N0aWNz');

@$core.Deprecated('Use convertProgramRequestDescriptor instead')
const ConvertProgramRequest$json = {
  '1': 'ConvertProgramRequest',
  '2': [
    {'1': 'source_directory', '3': 1, '4': 1, '5': 9, '10': 'sourceDirectory'},
    {'1': 'target_directory', '3': 2, '4': 1, '5': 9, '10': 'targetDirectory'},
    {'1': 'mapper_target', '3': 3, '4': 1, '5': 9, '10': 'mapperTarget'},
    {'1': 'loader_target', '3': 4, '4': 1, '5': 9, '10': 'loaderTarget'},
    {'1': 'args', '3': 5, '4': 3, '5': 9, '10': 'args'},
    {
      '1': 'generated_project_directory',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'generatedProjectDirectory'
    },
  ],
};

/// Descriptor for `ConvertProgramRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertProgramRequestDescriptor = $convert.base64Decode(
    'ChVDb252ZXJ0UHJvZ3JhbVJlcXVlc3QSKQoQc291cmNlX2RpcmVjdG9yeRgBIAEoCVIPc291cm'
    'NlRGlyZWN0b3J5EikKEHRhcmdldF9kaXJlY3RvcnkYAiABKAlSD3RhcmdldERpcmVjdG9yeRIj'
    'Cg1tYXBwZXJfdGFyZ2V0GAMgASgJUgxtYXBwZXJUYXJnZXQSIwoNbG9hZGVyX3RhcmdldBgEIA'
    'EoCVIMbG9hZGVyVGFyZ2V0EhIKBGFyZ3MYBSADKAlSBGFyZ3MSPgobZ2VuZXJhdGVkX3Byb2pl'
    'Y3RfZGlyZWN0b3J5GAYgASgJUhlnZW5lcmF0ZWRQcm9qZWN0RGlyZWN0b3J5');

@$core.Deprecated('Use convertProgramResponseDescriptor instead')
const ConvertProgramResponse$json = {
  '1': 'ConvertProgramResponse',
  '2': [
    {
      '1': 'diagnostics',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.codegen.Diagnostic',
      '10': 'diagnostics'
    },
  ],
};

/// Descriptor for `ConvertProgramResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertProgramResponseDescriptor =
    $convert.base64Decode(
        'ChZDb252ZXJ0UHJvZ3JhbVJlc3BvbnNlEj8KC2RpYWdub3N0aWNzGAEgAygLMh0ucHVsdW1pcn'
        'BjLmNvZGVnZW4uRGlhZ25vc3RpY1ILZGlhZ25vc3RpY3M=');
