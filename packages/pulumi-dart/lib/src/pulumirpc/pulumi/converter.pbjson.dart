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
    {'1': 'loader_target', '3': 3, '4': 1, '5': 9, '10': 'loaderTarget'},
    {'1': 'resolver_target', '3': 4, '4': 1, '5': 9, '10': 'resolverTarget'},
  ],
};

/// Descriptor for `ConvertStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertStateRequestDescriptor = $convert.base64Decode(
    'ChNDb252ZXJ0U3RhdGVSZXF1ZXN0EiMKDW1hcHBlcl90YXJnZXQYASABKAlSDG1hcHBlclRhcm'
    'dldBISCgRhcmdzGAIgAygJUgRhcmdzEiMKDWxvYWRlcl90YXJnZXQYAyABKAlSDGxvYWRlclRh'
    'cmdldBInCg9yZXNvbHZlcl90YXJnZXQYBCABKAlSDnJlc29sdmVyVGFyZ2V0');

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
    {
      '1': 'parameterization',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ResourceParameterization',
      '10': 'parameterization'
    },
    {
      '1': 'extension',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ResourceExtension',
      '10': 'extension'
    },
    {'1': 'parent', '3': 11, '4': 1, '5': 9, '10': 'parent'},
    {'1': 'properties', '3': 12, '4': 3, '5': 9, '10': 'properties'},
    {'1': 'provider', '3': 13, '4': 1, '5': 9, '10': 'provider'},
    {
      '1': 'inputs',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'outputs',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'outputs'
    },
  ],
};

/// Descriptor for `ResourceImport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceImportDescriptor = $convert.base64Decode(
    'Cg5SZXNvdXJjZUltcG9ydBISCgR0eXBlGAEgASgJUgR0eXBlEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USDgoCaWQYAyABKAlSAmlkEhgKB3ZlcnNpb24YBCABKAlSB3ZlcnNpb24SLAoRcGx1Z2luRG93'
    'bmxvYWRVUkwYBSABKAlSEXBsdWdpbkRvd25sb2FkVVJMEiEKDGxvZ2ljYWxfbmFtZRgGIAEoCV'
    'ILbG9naWNhbE5hbWUSIQoMaXNfY29tcG9uZW50GAcgASgIUgtpc0NvbXBvbmVudBIbCglpc19y'
    'ZW1vdGUYCCABKAhSCGlzUmVtb3RlEk8KEHBhcmFtZXRlcml6YXRpb24YCSABKAsyIy5wdWx1bW'
    'lycGMuUmVzb3VyY2VQYXJhbWV0ZXJpemF0aW9uUhBwYXJhbWV0ZXJpemF0aW9uEjoKCWV4dGVu'
    'c2lvbhgKIAEoCzIcLnB1bHVtaXJwYy5SZXNvdXJjZUV4dGVuc2lvblIJZXh0ZW5zaW9uEhYKBn'
    'BhcmVudBgLIAEoCVIGcGFyZW50Eh4KCnByb3BlcnRpZXMYDCADKAlSCnByb3BlcnRpZXMSGgoI'
    'cHJvdmlkZXIYDSABKAlSCHByb3ZpZGVyEi8KBmlucHV0cxgOIAEoCzIXLmdvb2dsZS5wcm90b2'
    'J1Zi5TdHJ1Y3RSBmlucHV0cxIxCgdvdXRwdXRzGA8gASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0'
    'cnVjdFIHb3V0cHV0cw==');

@$core.Deprecated('Use resourceParameterizationDescriptor instead')
const ResourceParameterization$json = {
  '1': 'ResourceParameterization',
  '2': [
    {'1': 'plugin_name', '3': 1, '4': 1, '5': 9, '10': 'pluginName'},
    {'1': 'plugin_version', '3': 2, '4': 1, '5': 9, '10': 'pluginVersion'},
    {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `ResourceParameterization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceParameterizationDescriptor = $convert.base64Decode(
    'ChhSZXNvdXJjZVBhcmFtZXRlcml6YXRpb24SHwoLcGx1Z2luX25hbWUYASABKAlSCnBsdWdpbk'
    '5hbWUSJQoOcGx1Z2luX3ZlcnNpb24YAiABKAlSDXBsdWdpblZlcnNpb24SFAoFdmFsdWUYAyAB'
    'KAxSBXZhbHVl');

@$core.Deprecated('Use resourceExtensionDescriptor instead')
const ResourceExtension$json = {
  '1': 'ResourceExtension',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `ResourceExtension`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceExtensionDescriptor = $convert.base64Decode(
    'ChFSZXNvdXJjZUV4dGVuc2lvbhISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3ZlcnNpb24YAiABKA'
    'lSB3ZlcnNpb24SFAoFdmFsdWUYAyABKAxSBXZhbHVl');

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

@$core.Deprecated('Use convertSnippetRequestDescriptor instead')
const ConvertSnippetRequest$json = {
  '1': 'ConvertSnippetRequest',
  '2': [
    {'1': 'filename', '3': 1, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'source', '3': 2, '4': 1, '5': 12, '10': 'source'},
    {'1': 'target_loader', '3': 3, '4': 1, '5': 9, '10': 'targetLoader'},
    {
      '1': 'package',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.codegen.GetSchemaRequest',
      '10': 'package'
    },
    {'1': 'token', '3': 5, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'attributes',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConvertSnippetRequest.AttributesEntry',
      '10': 'attributes'
    },
    {
      '1': 'resources',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConvertSnippetRequest.ResourcesEntry',
      '10': 'resources'
    },
  ],
  '3': [
    ConvertSnippetRequest_AttributesEntry$json,
    ConvertSnippetRequest_ResourceReference$json,
    ConvertSnippetRequest_ResourcesEntry$json
  ],
};

@$core.Deprecated('Use convertSnippetRequestDescriptor instead')
const ConvertSnippetRequest_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use convertSnippetRequestDescriptor instead')
const ConvertSnippetRequest_ResourceReference$json = {
  '1': 'ResourceReference',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'package',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.codegen.GetSchemaRequest',
      '10': 'package'
    },
  ],
};

@$core.Deprecated('Use convertSnippetRequestDescriptor instead')
const ConvertSnippetRequest_ResourcesEntry$json = {
  '1': 'ResourcesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ConvertSnippetRequest.ResourceReference',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ConvertSnippetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertSnippetRequestDescriptor = $convert.base64Decode(
    'ChVDb252ZXJ0U25pcHBldFJlcXVlc3QSGgoIZmlsZW5hbWUYASABKAlSCGZpbGVuYW1lEhYKBn'
    'NvdXJjZRgCIAEoDFIGc291cmNlEiMKDXRhcmdldF9sb2FkZXIYAyABKAlSDHRhcmdldExvYWRl'
    'chIzCgdwYWNrYWdlGAQgASgLMhkuY29kZWdlbi5HZXRTY2hlbWFSZXF1ZXN0UgdwYWNrYWdlEh'
    'QKBXRva2VuGAUgASgJUgV0b2tlbhJQCgphdHRyaWJ1dGVzGAYgAygLMjAucHVsdW1pcnBjLkNv'
    'bnZlcnRTbmlwcGV0UmVxdWVzdC5BdHRyaWJ1dGVzRW50cnlSCmF0dHJpYnV0ZXMSTQoJcmVzb3'
    'VyY2VzGAcgAygLMi8ucHVsdW1pcnBjLkNvbnZlcnRTbmlwcGV0UmVxdWVzdC5SZXNvdXJjZXNF'
    'bnRyeVIJcmVzb3VyY2VzGj0KD0F0dHJpYnV0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCg'
    'V2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGl4KEVJlc291cmNlUmVmZXJlbmNlEhQKBXRva2VuGAEg'
    'ASgJUgV0b2tlbhIzCgdwYWNrYWdlGAIgASgLMhkuY29kZWdlbi5HZXRTY2hlbWFSZXF1ZXN0Ug'
    'dwYWNrYWdlGnAKDlJlc291cmNlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EkgKBXZhbHVlGAIg'
    'ASgLMjIucHVsdW1pcnBjLkNvbnZlcnRTbmlwcGV0UmVxdWVzdC5SZXNvdXJjZVJlZmVyZW5jZV'
    'IFdmFsdWU6AjgB');

@$core.Deprecated('Use convertSnippetResponseDescriptor instead')
const ConvertSnippetResponse$json = {
  '1': 'ConvertSnippetResponse',
  '2': [
    {
      '1': 'diagnostics',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.codegen.Diagnostic',
      '10': 'diagnostics'
    },
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'source', '3': 3, '4': 1, '5': 12, '10': 'source'},
    {
      '1': 'attributes',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConvertSnippetResponse.AttributesEntry',
      '10': 'attributes'
    },
    {
      '1': 'resource_names',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConvertSnippetResponse.ResourceNamesEntry',
      '10': 'resourceNames'
    },
  ],
  '3': [
    ConvertSnippetResponse_AttributesEntry$json,
    ConvertSnippetResponse_ResourceNamesEntry$json
  ],
};

@$core.Deprecated('Use convertSnippetResponseDescriptor instead')
const ConvertSnippetResponse_AttributesEntry$json = {
  '1': 'AttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use convertSnippetResponseDescriptor instead')
const ConvertSnippetResponse_ResourceNamesEntry$json = {
  '1': 'ResourceNamesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ConvertSnippetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertSnippetResponseDescriptor = $convert.base64Decode(
    'ChZDb252ZXJ0U25pcHBldFJlc3BvbnNlEj8KC2RpYWdub3N0aWNzGAEgAygLMh0ucHVsdW1pcn'
    'BjLmNvZGVnZW4uRGlhZ25vc3RpY1ILZGlhZ25vc3RpY3MSGgoIZmlsZW5hbWUYAiABKAlSCGZp'
    'bGVuYW1lEhYKBnNvdXJjZRgDIAEoDFIGc291cmNlElEKCmF0dHJpYnV0ZXMYBCADKAsyMS5wdW'
    'x1bWlycGMuQ29udmVydFNuaXBwZXRSZXNwb25zZS5BdHRyaWJ1dGVzRW50cnlSCmF0dHJpYnV0'
    'ZXMSWwoOcmVzb3VyY2VfbmFtZXMYBSADKAsyNC5wdWx1bWlycGMuQ29udmVydFNuaXBwZXRSZX'
    'Nwb25zZS5SZXNvdXJjZU5hbWVzRW50cnlSDXJlc291cmNlTmFtZXMaPQoPQXR0cmlidXRlc0Vu'
    'dHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaQAoSUmVzb3'
    'VyY2VOYW1lc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToC'
    'OAE=');
