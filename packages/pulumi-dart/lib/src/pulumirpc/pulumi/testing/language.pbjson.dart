// This is a generated file - do not edit.
//
// Generated from pulumi/testing/language.proto.

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

@$core.Deprecated('Use getLanguageTestsRequestDescriptor instead')
const GetLanguageTestsRequest$json = {
  '1': 'GetLanguageTestsRequest',
};

/// Descriptor for `GetLanguageTestsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLanguageTestsRequestDescriptor =
    $convert.base64Decode('ChdHZXRMYW5ndWFnZVRlc3RzUmVxdWVzdA==');

@$core.Deprecated('Use getLanguageTestsResponseDescriptor instead')
const GetLanguageTestsResponse$json = {
  '1': 'GetLanguageTestsResponse',
  '2': [
    {'1': 'tests', '3': 1, '4': 3, '5': 9, '10': 'tests'},
  ],
};

/// Descriptor for `GetLanguageTestsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLanguageTestsResponseDescriptor =
    $convert.base64Decode(
        'ChhHZXRMYW5ndWFnZVRlc3RzUmVzcG9uc2USFAoFdGVzdHMYASADKAlSBXRlc3Rz');

@$core.Deprecated('Use prepareLanguageTestsRequestDescriptor instead')
const PrepareLanguageTestsRequest$json = {
  '1': 'PrepareLanguageTestsRequest',
  '2': [
    {
      '1': 'language_plugin_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'languagePluginName'
    },
    {
      '1': 'language_plugin_target',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'languagePluginTarget'
    },
    {
      '1': 'snapshot_directory',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'snapshotDirectory'
    },
    {
      '1': 'temporary_directory',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'temporaryDirectory'
    },
    {
      '1': 'core_sdk_directory',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'coreSdkDirectory'
    },
    {'1': 'core_sdk_version', '3': 6, '4': 1, '5': 9, '10': 'coreSdkVersion'},
    {
      '1': 'snapshot_edits',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.testing.PrepareLanguageTestsRequest.Replacement',
      '10': 'snapshotEdits'
    },
    {'1': 'language_info', '3': 8, '4': 1, '5': 9, '10': 'languageInfo'},
    {
      '1': 'program_overrides',
      '3': 9,
      '4': 3,
      '5': 11,
      '6':
          '.pulumirpc.testing.PrepareLanguageTestsRequest.ProgramOverridesEntry',
      '10': 'programOverrides'
    },
    {
      '1': 'policy_pack_directory',
      '3': 10,
      '4': 1,
      '5': 9,
      '10': 'policyPackDirectory'
    },
    {'1': 'local', '3': 11, '4': 1, '5': 8, '10': 'local'},
    {
      '1': 'providers_directory',
      '3': 12,
      '4': 1,
      '5': 9,
      '10': 'providersDirectory'
    },
  ],
  '3': [
    PrepareLanguageTestsRequest_Replacement$json,
    PrepareLanguageTestsRequest_ProgramOverride$json,
    PrepareLanguageTestsRequest_ProgramOverridesEntry$json
  ],
};

@$core.Deprecated('Use prepareLanguageTestsRequestDescriptor instead')
const PrepareLanguageTestsRequest_Replacement$json = {
  '1': 'Replacement',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'pattern', '3': 2, '4': 1, '5': 9, '10': 'pattern'},
    {'1': 'replacement', '3': 3, '4': 1, '5': 9, '10': 'replacement'},
  ],
};

@$core.Deprecated('Use prepareLanguageTestsRequestDescriptor instead')
const PrepareLanguageTestsRequest_ProgramOverride$json = {
  '1': 'ProgramOverride',
  '2': [
    {'1': 'paths', '3': 1, '4': 3, '5': 9, '10': 'paths'},
  ],
};

@$core.Deprecated('Use prepareLanguageTestsRequestDescriptor instead')
const PrepareLanguageTestsRequest_ProgramOverridesEntry$json = {
  '1': 'ProgramOverridesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.testing.PrepareLanguageTestsRequest.ProgramOverride',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `PrepareLanguageTestsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareLanguageTestsRequestDescriptor = $convert.base64Decode(
    'ChtQcmVwYXJlTGFuZ3VhZ2VUZXN0c1JlcXVlc3QSMAoUbGFuZ3VhZ2VfcGx1Z2luX25hbWUYAS'
    'ABKAlSEmxhbmd1YWdlUGx1Z2luTmFtZRI0ChZsYW5ndWFnZV9wbHVnaW5fdGFyZ2V0GAIgASgJ'
    'UhRsYW5ndWFnZVBsdWdpblRhcmdldBItChJzbmFwc2hvdF9kaXJlY3RvcnkYAyABKAlSEXNuYX'
    'BzaG90RGlyZWN0b3J5Ei8KE3RlbXBvcmFyeV9kaXJlY3RvcnkYBCABKAlSEnRlbXBvcmFyeURp'
    'cmVjdG9yeRIsChJjb3JlX3Nka19kaXJlY3RvcnkYBSABKAlSEGNvcmVTZGtEaXJlY3RvcnkSKA'
    'oQY29yZV9zZGtfdmVyc2lvbhgGIAEoCVIOY29yZVNka1ZlcnNpb24SYQoOc25hcHNob3RfZWRp'
    'dHMYByADKAsyOi5wdWx1bWlycGMudGVzdGluZy5QcmVwYXJlTGFuZ3VhZ2VUZXN0c1JlcXVlc3'
    'QuUmVwbGFjZW1lbnRSDXNuYXBzaG90RWRpdHMSIwoNbGFuZ3VhZ2VfaW5mbxgIIAEoCVIMbGFu'
    'Z3VhZ2VJbmZvEnEKEXByb2dyYW1fb3ZlcnJpZGVzGAkgAygLMkQucHVsdW1pcnBjLnRlc3Rpbm'
    'cuUHJlcGFyZUxhbmd1YWdlVGVzdHNSZXF1ZXN0LlByb2dyYW1PdmVycmlkZXNFbnRyeVIQcHJv'
    'Z3JhbU92ZXJyaWRlcxIyChVwb2xpY3lfcGFja19kaXJlY3RvcnkYCiABKAlSE3BvbGljeVBhY2'
    'tEaXJlY3RvcnkSFAoFbG9jYWwYCyABKAhSBWxvY2FsEi8KE3Byb3ZpZGVyc19kaXJlY3RvcnkY'
    'DCABKAlSEnByb3ZpZGVyc0RpcmVjdG9yeRpdCgtSZXBsYWNlbWVudBISCgRwYXRoGAEgASgJUg'
    'RwYXRoEhgKB3BhdHRlcm4YAiABKAlSB3BhdHRlcm4SIAoLcmVwbGFjZW1lbnQYAyABKAlSC3Jl'
    'cGxhY2VtZW50GicKD1Byb2dyYW1PdmVycmlkZRIUCgVwYXRocxgBIAMoCVIFcGF0aHMagwEKFV'
    'Byb2dyYW1PdmVycmlkZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRJUCgV2YWx1ZRgCIAEoCzI+'
    'LnB1bHVtaXJwYy50ZXN0aW5nLlByZXBhcmVMYW5ndWFnZVRlc3RzUmVxdWVzdC5Qcm9ncmFtT3'
    'ZlcnJpZGVSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use prepareLanguageTestsResponseDescriptor instead')
const PrepareLanguageTestsResponse$json = {
  '1': 'PrepareLanguageTestsResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `PrepareLanguageTestsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareLanguageTestsResponseDescriptor =
    $convert.base64Decode(
        'ChxQcmVwYXJlTGFuZ3VhZ2VUZXN0c1Jlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbg==');

@$core.Deprecated('Use runLanguageTestRequestDescriptor instead')
const RunLanguageTestRequest$json = {
  '1': 'RunLanguageTestRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'test', '3': 2, '4': 1, '5': 9, '10': 'test'},
  ],
};

/// Descriptor for `RunLanguageTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runLanguageTestRequestDescriptor =
    $convert.base64Decode(
        'ChZSdW5MYW5ndWFnZVRlc3RSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbhISCgR0ZXN0GA'
        'IgASgJUgR0ZXN0');

@$core.Deprecated('Use runLanguageTestResponseDescriptor instead')
const RunLanguageTestResponse$json = {
  '1': 'RunLanguageTestResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'messages', '3': 2, '4': 3, '5': 9, '10': 'messages'},
    {'1': 'stdout', '3': 3, '4': 1, '5': 9, '10': 'stdout'},
    {'1': 'stderr', '3': 4, '4': 1, '5': 9, '10': 'stderr'},
  ],
};

/// Descriptor for `RunLanguageTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runLanguageTestResponseDescriptor = $convert.base64Decode(
    'ChdSdW5MYW5ndWFnZVRlc3RSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhoKCG'
    '1lc3NhZ2VzGAIgAygJUghtZXNzYWdlcxIWCgZzdGRvdXQYAyABKAlSBnN0ZG91dBIWCgZzdGRl'
    'cnIYBCABKAlSBnN0ZGVycg==');
