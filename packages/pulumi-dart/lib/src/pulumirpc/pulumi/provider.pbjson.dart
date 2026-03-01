// This is a generated file - do not edit.
//
// Generated from pulumi/provider.proto.

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

@$core.Deprecated('Use providerHandshakeRequestDescriptor instead')
const ProviderHandshakeRequest$json = {
  '1': 'ProviderHandshakeRequest',
  '2': [
    {'1': 'engine_address', '3': 1, '4': 1, '5': 9, '10': 'engineAddress'},
    {
      '1': 'root_directory',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'rootDirectory',
      '17': true
    },
    {
      '1': 'program_directory',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'programDirectory',
      '17': true
    },
    {
      '1': 'configure_with_urn',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'configureWithUrn'
    },
    {'1': 'supports_views', '3': 5, '4': 1, '5': 8, '10': 'supportsViews'},
    {
      '1': 'supports_refresh_before_update',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'supportsRefreshBeforeUpdate'
    },
    {
      '1': 'invoke_with_preview',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'invokeWithPreview'
    },
  ],
  '8': [
    {'1': '_root_directory'},
    {'1': '_program_directory'},
  ],
};

/// Descriptor for `ProviderHandshakeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List providerHandshakeRequestDescriptor = $convert.base64Decode(
    'ChhQcm92aWRlckhhbmRzaGFrZVJlcXVlc3QSJQoOZW5naW5lX2FkZHJlc3MYASABKAlSDWVuZ2'
    'luZUFkZHJlc3MSKgoOcm9vdF9kaXJlY3RvcnkYAiABKAlIAFINcm9vdERpcmVjdG9yeYgBARIw'
    'ChFwcm9ncmFtX2RpcmVjdG9yeRgDIAEoCUgBUhBwcm9ncmFtRGlyZWN0b3J5iAEBEiwKEmNvbm'
    'ZpZ3VyZV93aXRoX3VybhgEIAEoCFIQY29uZmlndXJlV2l0aFVybhIlCg5zdXBwb3J0c192aWV3'
    'cxgFIAEoCFINc3VwcG9ydHNWaWV3cxJDCh5zdXBwb3J0c19yZWZyZXNoX2JlZm9yZV91cGRhdG'
    'UYBiABKAhSG3N1cHBvcnRzUmVmcmVzaEJlZm9yZVVwZGF0ZRIuChNpbnZva2Vfd2l0aF9wcmV2'
    'aWV3GAcgASgIUhFpbnZva2VXaXRoUHJldmlld0IRCg9fcm9vdF9kaXJlY3RvcnlCFAoSX3Byb2'
    'dyYW1fZGlyZWN0b3J5');

@$core.Deprecated('Use providerHandshakeResponseDescriptor instead')
const ProviderHandshakeResponse$json = {
  '1': 'ProviderHandshakeResponse',
  '2': [
    {'1': 'accept_secrets', '3': 1, '4': 1, '5': 8, '10': 'acceptSecrets'},
    {'1': 'accept_resources', '3': 2, '4': 1, '5': 8, '10': 'acceptResources'},
    {'1': 'accept_outputs', '3': 3, '4': 1, '5': 8, '10': 'acceptOutputs'},
    {
      '1': 'supports_autonaming_configuration',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'supportsAutonamingConfiguration'
    },
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
  '10': ['pulumi_version_range'],
};

/// Descriptor for `ProviderHandshakeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List providerHandshakeResponseDescriptor = $convert.base64Decode(
    'ChlQcm92aWRlckhhbmRzaGFrZVJlc3BvbnNlEiUKDmFjY2VwdF9zZWNyZXRzGAEgASgIUg1hY2'
    'NlcHRTZWNyZXRzEikKEGFjY2VwdF9yZXNvdXJjZXMYAiABKAhSD2FjY2VwdFJlc291cmNlcxIl'
    'Cg5hY2NlcHRfb3V0cHV0cxgDIAEoCFINYWNjZXB0T3V0cHV0cxJKCiFzdXBwb3J0c19hdXRvbm'
    'FtaW5nX2NvbmZpZ3VyYXRpb24YBCABKAhSH3N1cHBvcnRzQXV0b25hbWluZ0NvbmZpZ3VyYXRp'
    'b25KBAgFEAZSFHB1bHVtaV92ZXJzaW9uX3Jhbmdl');

@$core.Deprecated('Use parameterizeRequestDescriptor instead')
const ParameterizeRequest$json = {
  '1': 'ParameterizeRequest',
  '2': [
    {
      '1': 'args',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ParameterizeRequest.ParametersArgs',
      '9': 0,
      '10': 'args'
    },
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ParameterizeRequest.ParametersValue',
      '9': 0,
      '10': 'value'
    },
  ],
  '3': [
    ParameterizeRequest_ParametersArgs$json,
    ParameterizeRequest_ParametersValue$json
  ],
  '8': [
    {'1': 'parameters'},
  ],
};

@$core.Deprecated('Use parameterizeRequestDescriptor instead')
const ParameterizeRequest_ParametersArgs$json = {
  '1': 'ParametersArgs',
  '2': [
    {'1': 'args', '3': 1, '4': 3, '5': 9, '10': 'args'},
  ],
};

@$core.Deprecated('Use parameterizeRequestDescriptor instead')
const ParameterizeRequest_ParametersValue$json = {
  '1': 'ParametersValue',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `ParameterizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parameterizeRequestDescriptor = $convert.base64Decode(
    'ChNQYXJhbWV0ZXJpemVSZXF1ZXN0EkMKBGFyZ3MYASABKAsyLS5wdWx1bWlycGMuUGFyYW1ldG'
    'VyaXplUmVxdWVzdC5QYXJhbWV0ZXJzQXJnc0gAUgRhcmdzEkYKBXZhbHVlGAIgASgLMi4ucHVs'
    'dW1pcnBjLlBhcmFtZXRlcml6ZVJlcXVlc3QuUGFyYW1ldGVyc1ZhbHVlSABSBXZhbHVlGiQKDl'
    'BhcmFtZXRlcnNBcmdzEhIKBGFyZ3MYASADKAlSBGFyZ3MaVQoPUGFyYW1ldGVyc1ZhbHVlEhIK'
    'BG5hbWUYASABKAlSBG5hbWUSGAoHdmVyc2lvbhgCIAEoCVIHdmVyc2lvbhIUCgV2YWx1ZRgDIA'
    'EoDFIFdmFsdWVCDAoKcGFyYW1ldGVycw==');

@$core.Deprecated('Use parameterizeResponseDescriptor instead')
const ParameterizeResponse$json = {
  '1': 'ParameterizeResponse',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `ParameterizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parameterizeResponseDescriptor = $convert.base64Decode(
    'ChRQYXJhbWV0ZXJpemVSZXNwb25zZRISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3ZlcnNpb24YAi'
    'ABKAlSB3ZlcnNpb24=');

@$core.Deprecated('Use getSchemaRequestDescriptor instead')
const GetSchemaRequest$json = {
  '1': 'GetSchemaRequest',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    {'1': 'subpackage_name', '3': 2, '4': 1, '5': 9, '10': 'subpackageName'},
    {
      '1': 'subpackage_version',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'subpackageVersion'
    },
  ],
};

/// Descriptor for `GetSchemaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSchemaRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTY2hlbWFSZXF1ZXN0EhgKB3ZlcnNpb24YASABKAVSB3ZlcnNpb24SJwoPc3VicGFja2'
    'FnZV9uYW1lGAIgASgJUg5zdWJwYWNrYWdlTmFtZRItChJzdWJwYWNrYWdlX3ZlcnNpb24YAyAB'
    'KAlSEXN1YnBhY2thZ2VWZXJzaW9u');

@$core.Deprecated('Use getSchemaResponseDescriptor instead')
const GetSchemaResponse$json = {
  '1': 'GetSchemaResponse',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 9, '10': 'schema'},
  ],
};

/// Descriptor for `GetSchemaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSchemaResponseDescriptor = $convert.base64Decode(
    'ChFHZXRTY2hlbWFSZXNwb25zZRIWCgZzY2hlbWEYASABKAlSBnNjaGVtYQ==');

@$core.Deprecated('Use configureRequestDescriptor instead')
const ConfigureRequest$json = {
  '1': 'ConfigureRequest',
  '2': [
    {
      '1': 'variables',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConfigureRequest.VariablesEntry',
      '10': 'variables'
    },
    {
      '1': 'args',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'args'
    },
    {'1': 'acceptSecrets', '3': 3, '4': 1, '5': 8, '10': 'acceptSecrets'},
    {'1': 'acceptResources', '3': 4, '4': 1, '5': 8, '10': 'acceptResources'},
    {'1': 'sends_old_inputs', '3': 5, '4': 1, '5': 8, '10': 'sendsOldInputs'},
    {
      '1': 'sends_old_inputs_to_delete',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'sendsOldInputsToDelete'
    },
    {'1': 'id', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    {'1': 'urn', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'urn', '17': true},
    {'1': 'name', '3': 9, '4': 1, '5': 9, '9': 2, '10': 'name', '17': true},
    {'1': 'type', '3': 10, '4': 1, '5': 9, '9': 3, '10': 'type', '17': true},
  ],
  '3': [ConfigureRequest_VariablesEntry$json],
  '8': [
    {'1': '_id'},
    {'1': '_urn'},
    {'1': '_name'},
    {'1': '_type'},
  ],
};

@$core.Deprecated('Use configureRequestDescriptor instead')
const ConfigureRequest_VariablesEntry$json = {
  '1': 'VariablesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ConfigureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configureRequestDescriptor = $convert.base64Decode(
    'ChBDb25maWd1cmVSZXF1ZXN0EkgKCXZhcmlhYmxlcxgBIAMoCzIqLnB1bHVtaXJwYy5Db25maW'
    'd1cmVSZXF1ZXN0LlZhcmlhYmxlc0VudHJ5Ugl2YXJpYWJsZXMSKwoEYXJncxgCIAEoCzIXLmdv'
    'b2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBGFyZ3MSJAoNYWNjZXB0U2VjcmV0cxgDIAEoCFINYWNjZX'
    'B0U2VjcmV0cxIoCg9hY2NlcHRSZXNvdXJjZXMYBCABKAhSD2FjY2VwdFJlc291cmNlcxIoChBz'
    'ZW5kc19vbGRfaW5wdXRzGAUgASgIUg5zZW5kc09sZElucHV0cxI6ChpzZW5kc19vbGRfaW5wdX'
    'RzX3RvX2RlbGV0ZRgGIAEoCFIWc2VuZHNPbGRJbnB1dHNUb0RlbGV0ZRITCgJpZBgHIAEoCUgA'
    'UgJpZIgBARIVCgN1cm4YCCABKAlIAVIDdXJuiAEBEhcKBG5hbWUYCSABKAlIAlIEbmFtZYgBAR'
    'IXCgR0eXBlGAogASgJSANSBHR5cGWIAQEaPAoOVmFyaWFibGVzRW50cnkSEAoDa2V5GAEgASgJ'
    'UgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUIFCgNfaWRCBgoEX3VybkIHCgVfbmFtZU'
    'IHCgVfdHlwZQ==');

@$core.Deprecated('Use configureResponseDescriptor instead')
const ConfigureResponse$json = {
  '1': 'ConfigureResponse',
  '2': [
    {'1': 'acceptSecrets', '3': 1, '4': 1, '5': 8, '10': 'acceptSecrets'},
    {'1': 'supportsPreview', '3': 2, '4': 1, '5': 8, '10': 'supportsPreview'},
    {'1': 'acceptResources', '3': 3, '4': 1, '5': 8, '10': 'acceptResources'},
    {'1': 'acceptOutputs', '3': 4, '4': 1, '5': 8, '10': 'acceptOutputs'},
    {
      '1': 'supports_autonaming_configuration',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'supportsAutonamingConfiguration'
    },
  ],
};

/// Descriptor for `ConfigureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configureResponseDescriptor = $convert.base64Decode(
    'ChFDb25maWd1cmVSZXNwb25zZRIkCg1hY2NlcHRTZWNyZXRzGAEgASgIUg1hY2NlcHRTZWNyZX'
    'RzEigKD3N1cHBvcnRzUHJldmlldxgCIAEoCFIPc3VwcG9ydHNQcmV2aWV3EigKD2FjY2VwdFJl'
    'c291cmNlcxgDIAEoCFIPYWNjZXB0UmVzb3VyY2VzEiQKDWFjY2VwdE91dHB1dHMYBCABKAhSDW'
    'FjY2VwdE91dHB1dHMSSgohc3VwcG9ydHNfYXV0b25hbWluZ19jb25maWd1cmF0aW9uGAUgASgI'
    'Uh9zdXBwb3J0c0F1dG9uYW1pbmdDb25maWd1cmF0aW9u');

@$core.Deprecated('Use configureErrorMissingKeysDescriptor instead')
const ConfigureErrorMissingKeys$json = {
  '1': 'ConfigureErrorMissingKeys',
  '2': [
    {
      '1': 'missingKeys',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConfigureErrorMissingKeys.MissingKey',
      '10': 'missingKeys'
    },
  ],
  '3': [ConfigureErrorMissingKeys_MissingKey$json],
};

@$core.Deprecated('Use configureErrorMissingKeysDescriptor instead')
const ConfigureErrorMissingKeys_MissingKey$json = {
  '1': 'MissingKey',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `ConfigureErrorMissingKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configureErrorMissingKeysDescriptor = $convert.base64Decode(
    'ChlDb25maWd1cmVFcnJvck1pc3NpbmdLZXlzElEKC21pc3NpbmdLZXlzGAEgAygLMi8ucHVsdW'
    '1pcnBjLkNvbmZpZ3VyZUVycm9yTWlzc2luZ0tleXMuTWlzc2luZ0tleVILbWlzc2luZ0tleXMa'
    'QgoKTWlzc2luZ0tleRISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUg'
    'tkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use invokeRequestDescriptor instead')
const InvokeRequest$json = {
  '1': 'InvokeRequest',
  '2': [
    {'1': 'tok', '3': 1, '4': 1, '5': 9, '10': 'tok'},
    {
      '1': 'args',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'args'
    },
    {'1': 'preview', '3': 7, '4': 1, '5': 8, '10': 'preview'},
  ],
  '9': [
    {'1': 3, '2': 7},
  ],
  '10': ['provider', 'version', 'acceptResources', 'pluginDownloadURL'],
};

/// Descriptor for `InvokeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeRequestDescriptor = $convert.base64Decode(
    'Cg1JbnZva2VSZXF1ZXN0EhAKA3RvaxgBIAEoCVIDdG9rEisKBGFyZ3MYAiABKAsyFy5nb29nbG'
    'UucHJvdG9idWYuU3RydWN0UgRhcmdzEhgKB3ByZXZpZXcYByABKAhSB3ByZXZpZXdKBAgDEAdS'
    'CHByb3ZpZGVyUgd2ZXJzaW9uUg9hY2NlcHRSZXNvdXJjZXNSEXBsdWdpbkRvd25sb2FkVVJM');

@$core.Deprecated('Use invokeResponseDescriptor instead')
const InvokeResponse$json = {
  '1': 'InvokeResponse',
  '2': [
    {
      '1': 'return',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'return'
    },
    {
      '1': 'failures',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.CheckFailure',
      '10': 'failures'
    },
  ],
};

/// Descriptor for `InvokeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeResponseDescriptor = $convert.base64Decode(
    'Cg5JbnZva2VSZXNwb25zZRIvCgZyZXR1cm4YASABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydW'
    'N0UgZyZXR1cm4SMwoIZmFpbHVyZXMYAiADKAsyFy5wdWx1bWlycGMuQ2hlY2tGYWlsdXJlUghm'
    'YWlsdXJlcw==');

@$core.Deprecated('Use callRequestDescriptor instead')
const CallRequest$json = {
  '1': 'CallRequest',
  '2': [
    {'1': 'tok', '3': 1, '4': 1, '5': 9, '10': 'tok'},
    {
      '1': 'args',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'args'
    },
    {
      '1': 'argDependencies',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.CallRequest.ArgDependenciesEntry',
      '10': 'argDependencies'
    },
    {'1': 'project', '3': 6, '4': 1, '5': 9, '10': 'project'},
    {'1': 'stack', '3': 7, '4': 1, '5': 9, '10': 'stack'},
    {
      '1': 'config',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.CallRequest.ConfigEntry',
      '10': 'config'
    },
    {'1': 'configSecretKeys', '3': 9, '4': 3, '5': 9, '10': 'configSecretKeys'},
    {'1': 'dryRun', '3': 10, '4': 1, '5': 8, '10': 'dryRun'},
    {'1': 'parallel', '3': 11, '4': 1, '5': 5, '10': 'parallel'},
    {'1': 'monitorEndpoint', '3': 12, '4': 1, '5': 9, '10': 'monitorEndpoint'},
    {'1': 'organization', '3': 14, '4': 1, '5': 9, '10': 'organization'},
    {
      '1': 'accepts_output_values',
      '3': 17,
      '4': 1,
      '5': 8,
      '10': 'acceptsOutputValues'
    },
    {
      '1': 'stack_trace_handle',
      '3': 18,
      '4': 1,
      '5': 9,
      '10': 'stackTraceHandle'
    },
  ],
  '3': [
    CallRequest_ArgumentDependencies$json,
    CallRequest_ArgDependenciesEntry$json,
    CallRequest_ConfigEntry$json
  ],
  '9': [
    {'1': 4, '2': 5},
    {'1': 5, '2': 6},
    {'1': 13, '2': 14},
    {'1': 16, '2': 17},
    {'1': 15, '2': 16},
  ],
  '10': [
    'provider',
    'version',
    'pluginDownloadURL',
    'pluginChecksums',
    'sourcePosition'
  ],
};

@$core.Deprecated('Use callRequestDescriptor instead')
const CallRequest_ArgumentDependencies$json = {
  '1': 'ArgumentDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

@$core.Deprecated('Use callRequestDescriptor instead')
const CallRequest_ArgDependenciesEntry$json = {
  '1': 'ArgDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.CallRequest.ArgumentDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use callRequestDescriptor instead')
const CallRequest_ConfigEntry$json = {
  '1': 'ConfigEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CallRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callRequestDescriptor = $convert.base64Decode(
    'CgtDYWxsUmVxdWVzdBIQCgN0b2sYASABKAlSA3RvaxIrCgRhcmdzGAIgASgLMhcuZ29vZ2xlLn'
    'Byb3RvYnVmLlN0cnVjdFIEYXJncxJVCg9hcmdEZXBlbmRlbmNpZXMYAyADKAsyKy5wdWx1bWly'
    'cGMuQ2FsbFJlcXVlc3QuQXJnRGVwZW5kZW5jaWVzRW50cnlSD2FyZ0RlcGVuZGVuY2llcxIYCg'
    'dwcm9qZWN0GAYgASgJUgdwcm9qZWN0EhQKBXN0YWNrGAcgASgJUgVzdGFjaxI6CgZjb25maWcY'
    'CCADKAsyIi5wdWx1bWlycGMuQ2FsbFJlcXVlc3QuQ29uZmlnRW50cnlSBmNvbmZpZxIqChBjb2'
    '5maWdTZWNyZXRLZXlzGAkgAygJUhBjb25maWdTZWNyZXRLZXlzEhYKBmRyeVJ1bhgKIAEoCFIG'
    'ZHJ5UnVuEhoKCHBhcmFsbGVsGAsgASgFUghwYXJhbGxlbBIoCg9tb25pdG9yRW5kcG9pbnQYDC'
    'ABKAlSD21vbml0b3JFbmRwb2ludBIiCgxvcmdhbml6YXRpb24YDiABKAlSDG9yZ2FuaXphdGlv'
    'bhIyChVhY2NlcHRzX291dHB1dF92YWx1ZXMYESABKAhSE2FjY2VwdHNPdXRwdXRWYWx1ZXMSLA'
    'oSc3RhY2tfdHJhY2VfaGFuZGxlGBIgASgJUhBzdGFja1RyYWNlSGFuZGxlGioKFEFyZ3VtZW50'
    'RGVwZW5kZW5jaWVzEhIKBHVybnMYASADKAlSBHVybnMabwoUQXJnRGVwZW5kZW5jaWVzRW50cn'
    'kSEAoDa2V5GAEgASgJUgNrZXkSQQoFdmFsdWUYAiABKAsyKy5wdWx1bWlycGMuQ2FsbFJlcXVl'
    'c3QuQXJndW1lbnREZXBlbmRlbmNpZXNSBXZhbHVlOgI4ARo5CgtDb25maWdFbnRyeRIQCgNrZX'
    'kYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBSgQIBBAFSgQIBRAGSgQIDRAO'
    'SgQIEBARSgQIDxAQUghwcm92aWRlclIHdmVyc2lvblIRcGx1Z2luRG93bmxvYWRVUkxSD3BsdW'
    'dpbkNoZWNrc3Vtc1IOc291cmNlUG9zaXRpb24=');

@$core.Deprecated('Use callResponseDescriptor instead')
const CallResponse$json = {
  '1': 'CallResponse',
  '2': [
    {
      '1': 'return',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'return'
    },
    {
      '1': 'failures',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.CheckFailure',
      '10': 'failures'
    },
    {
      '1': 'returnDependencies',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.CallResponse.ReturnDependenciesEntry',
      '10': 'returnDependencies'
    },
  ],
  '3': [
    CallResponse_ReturnDependencies$json,
    CallResponse_ReturnDependenciesEntry$json
  ],
};

@$core.Deprecated('Use callResponseDescriptor instead')
const CallResponse_ReturnDependencies$json = {
  '1': 'ReturnDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

@$core.Deprecated('Use callResponseDescriptor instead')
const CallResponse_ReturnDependenciesEntry$json = {
  '1': 'ReturnDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.CallResponse.ReturnDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `CallResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callResponseDescriptor = $convert.base64Decode(
    'CgxDYWxsUmVzcG9uc2USLwoGcmV0dXJuGAEgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdF'
    'IGcmV0dXJuEjMKCGZhaWx1cmVzGAMgAygLMhcucHVsdW1pcnBjLkNoZWNrRmFpbHVyZVIIZmFp'
    'bHVyZXMSXwoScmV0dXJuRGVwZW5kZW5jaWVzGAIgAygLMi8ucHVsdW1pcnBjLkNhbGxSZXNwb2'
    '5zZS5SZXR1cm5EZXBlbmRlbmNpZXNFbnRyeVIScmV0dXJuRGVwZW5kZW5jaWVzGigKElJldHVy'
    'bkRlcGVuZGVuY2llcxISCgR1cm5zGAEgAygJUgR1cm5zGnEKF1JldHVybkRlcGVuZGVuY2llc0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EkAKBXZhbHVlGAIgASgLMioucHVsdW1pcnBjLkNhbGxS'
    'ZXNwb25zZS5SZXR1cm5EZXBlbmRlbmNpZXNSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use checkRequestDescriptor instead')
const CheckRequest$json = {
  '1': 'CheckRequest',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'olds',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'olds'
    },
    {
      '1': 'news',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'news'
    },
    {'1': 'randomSeed', '3': 5, '4': 1, '5': 12, '10': 'randomSeed'},
    {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 7, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'autonaming',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.CheckRequest.AutonamingOptions',
      '10': 'autonaming'
    },
  ],
  '3': [CheckRequest_AutonamingOptions$json],
  '9': [
    {'1': 4, '2': 5},
  ],
  '10': ['sequenceNumber'],
};

@$core.Deprecated('Use checkRequestDescriptor instead')
const CheckRequest_AutonamingOptions$json = {
  '1': 'AutonamingOptions',
  '2': [
    {'1': 'proposed_name', '3': 1, '4': 1, '5': 9, '10': 'proposedName'},
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.CheckRequest.AutonamingOptions.Mode',
      '10': 'mode'
    },
  ],
  '4': [CheckRequest_AutonamingOptions_Mode$json],
};

@$core.Deprecated('Use checkRequestDescriptor instead')
const CheckRequest_AutonamingOptions_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'PROPOSE', '2': 0},
    {'1': 'ENFORCE', '2': 1},
    {'1': 'DISABLE', '2': 2},
  ],
};

/// Descriptor for `CheckRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkRequestDescriptor = $convert.base64Decode(
    'CgxDaGVja1JlcXVlc3QSEAoDdXJuGAEgASgJUgN1cm4SKwoEb2xkcxgCIAEoCzIXLmdvb2dsZS'
    '5wcm90b2J1Zi5TdHJ1Y3RSBG9sZHMSKwoEbmV3cxgDIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5T'
    'dHJ1Y3RSBG5ld3MSHgoKcmFuZG9tU2VlZBgFIAEoDFIKcmFuZG9tU2VlZBISCgRuYW1lGAYgAS'
    'gJUgRuYW1lEhIKBHR5cGUYByABKAlSBHR5cGUSSQoKYXV0b25hbWluZxgIIAEoCzIpLnB1bHVt'
    'aXJwYy5DaGVja1JlcXVlc3QuQXV0b25hbWluZ09wdGlvbnNSCmF1dG9uYW1pbmcaqwEKEUF1dG'
    '9uYW1pbmdPcHRpb25zEiMKDXByb3Bvc2VkX25hbWUYASABKAlSDHByb3Bvc2VkTmFtZRJCCgRt'
    'b2RlGAIgASgOMi4ucHVsdW1pcnBjLkNoZWNrUmVxdWVzdC5BdXRvbmFtaW5nT3B0aW9ucy5Nb2'
    'RlUgRtb2RlIi0KBE1vZGUSCwoHUFJPUE9TRRAAEgsKB0VORk9SQ0UQARILCgdESVNBQkxFEAJK'
    'BAgEEAVSDnNlcXVlbmNlTnVtYmVy');

@$core.Deprecated('Use checkResponseDescriptor instead')
const CheckResponse$json = {
  '1': 'CheckResponse',
  '2': [
    {
      '1': 'inputs',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'failures',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.CheckFailure',
      '10': 'failures'
    },
  ],
};

/// Descriptor for `CheckResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkResponseDescriptor = $convert.base64Decode(
    'Cg1DaGVja1Jlc3BvbnNlEi8KBmlucHV0cxgBIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3'
    'RSBmlucHV0cxIzCghmYWlsdXJlcxgCIAMoCzIXLnB1bHVtaXJwYy5DaGVja0ZhaWx1cmVSCGZh'
    'aWx1cmVz');

@$core.Deprecated('Use checkFailureDescriptor instead')
const CheckFailure$json = {
  '1': 'CheckFailure',
  '2': [
    {'1': 'property', '3': 1, '4': 1, '5': 9, '10': 'property'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `CheckFailure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkFailureDescriptor = $convert.base64Decode(
    'CgxDaGVja0ZhaWx1cmUSGgoIcHJvcGVydHkYASABKAlSCHByb3BlcnR5EhYKBnJlYXNvbhgCIA'
    'EoCVIGcmVhc29u');

@$core.Deprecated('Use diffRequestDescriptor instead')
const DiffRequest$json = {
  '1': 'DiffRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'urn', '3': 2, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'olds',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'olds'
    },
    {
      '1': 'news',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'news'
    },
    {'1': 'ignoreChanges', '3': 5, '4': 3, '5': 9, '10': 'ignoreChanges'},
    {
      '1': 'old_inputs',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'oldInputs'
    },
    {'1': 'name', '3': 7, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 8, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `DiffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diffRequestDescriptor = $convert.base64Decode(
    'CgtEaWZmUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSEAoDdXJuGAIgASgJUgN1cm4SKwoEb2xkcx'
    'gDIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBG9sZHMSKwoEbmV3cxgEIAEoCzIXLmdv'
    'b2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBG5ld3MSJAoNaWdub3JlQ2hhbmdlcxgFIAMoCVINaWdub3'
    'JlQ2hhbmdlcxI2CgpvbGRfaW5wdXRzGAYgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIJ'
    'b2xkSW5wdXRzEhIKBG5hbWUYByABKAlSBG5hbWUSEgoEdHlwZRgIIAEoCVIEdHlwZQ==');

@$core.Deprecated('Use propertyDiffDescriptor instead')
const PropertyDiff$json = {
  '1': 'PropertyDiff',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.PropertyDiff.Kind',
      '10': 'kind'
    },
    {'1': 'inputDiff', '3': 2, '4': 1, '5': 8, '10': 'inputDiff'},
  ],
  '4': [PropertyDiff_Kind$json],
};

@$core.Deprecated('Use propertyDiffDescriptor instead')
const PropertyDiff_Kind$json = {
  '1': 'Kind',
  '2': [
    {'1': 'ADD', '2': 0},
    {'1': 'ADD_REPLACE', '2': 1},
    {'1': 'DELETE', '2': 2},
    {'1': 'DELETE_REPLACE', '2': 3},
    {'1': 'UPDATE', '2': 4},
    {'1': 'UPDATE_REPLACE', '2': 5},
  ],
};

/// Descriptor for `PropertyDiff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyDiffDescriptor = $convert.base64Decode(
    'CgxQcm9wZXJ0eURpZmYSMAoEa2luZBgBIAEoDjIcLnB1bHVtaXJwYy5Qcm9wZXJ0eURpZmYuS2'
    'luZFIEa2luZBIcCglpbnB1dERpZmYYAiABKAhSCWlucHV0RGlmZiJgCgRLaW5kEgcKA0FERBAA'
    'Eg8KC0FERF9SRVBMQUNFEAESCgoGREVMRVRFEAISEgoOREVMRVRFX1JFUExBQ0UQAxIKCgZVUE'
    'RBVEUQBBISCg5VUERBVEVfUkVQTEFDRRAF');

@$core.Deprecated('Use diffResponseDescriptor instead')
const DiffResponse$json = {
  '1': 'DiffResponse',
  '2': [
    {'1': 'replaces', '3': 1, '4': 3, '5': 9, '10': 'replaces'},
    {'1': 'stables', '3': 2, '4': 3, '5': 9, '10': 'stables'},
    {
      '1': 'deleteBeforeReplace',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'deleteBeforeReplace'
    },
    {
      '1': 'changes',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.DiffResponse.DiffChanges',
      '10': 'changes'
    },
    {'1': 'diffs', '3': 5, '4': 3, '5': 9, '10': 'diffs'},
    {
      '1': 'detailedDiff',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.DiffResponse.DetailedDiffEntry',
      '10': 'detailedDiff'
    },
    {'1': 'hasDetailedDiff', '3': 7, '4': 1, '5': 8, '10': 'hasDetailedDiff'},
  ],
  '3': [DiffResponse_DetailedDiffEntry$json],
  '4': [DiffResponse_DiffChanges$json],
};

@$core.Deprecated('Use diffResponseDescriptor instead')
const DiffResponse_DetailedDiffEntry$json = {
  '1': 'DetailedDiffEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PropertyDiff',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use diffResponseDescriptor instead')
const DiffResponse_DiffChanges$json = {
  '1': 'DiffChanges',
  '2': [
    {'1': 'DIFF_UNKNOWN', '2': 0},
    {'1': 'DIFF_NONE', '2': 1},
    {'1': 'DIFF_SOME', '2': 2},
  ],
};

/// Descriptor for `DiffResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diffResponseDescriptor = $convert.base64Decode(
    'CgxEaWZmUmVzcG9uc2USGgoIcmVwbGFjZXMYASADKAlSCHJlcGxhY2VzEhgKB3N0YWJsZXMYAi'
    'ADKAlSB3N0YWJsZXMSMAoTZGVsZXRlQmVmb3JlUmVwbGFjZRgDIAEoCFITZGVsZXRlQmVmb3Jl'
    'UmVwbGFjZRI9CgdjaGFuZ2VzGAQgASgOMiMucHVsdW1pcnBjLkRpZmZSZXNwb25zZS5EaWZmQ2'
    'hhbmdlc1IHY2hhbmdlcxIUCgVkaWZmcxgFIAMoCVIFZGlmZnMSTQoMZGV0YWlsZWREaWZmGAYg'
    'AygLMikucHVsdW1pcnBjLkRpZmZSZXNwb25zZS5EZXRhaWxlZERpZmZFbnRyeVIMZGV0YWlsZW'
    'REaWZmEigKD2hhc0RldGFpbGVkRGlmZhgHIAEoCFIPaGFzRGV0YWlsZWREaWZmGlgKEURldGFp'
    'bGVkRGlmZkVudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ei0KBXZhbHVlGAIgASgLMhcucHVsdW1pcn'
    'BjLlByb3BlcnR5RGlmZlIFdmFsdWU6AjgBIj0KC0RpZmZDaGFuZ2VzEhAKDERJRkZfVU5LTk9X'
    'ThAAEg0KCURJRkZfTk9ORRABEg0KCURJRkZfU09NRRAC');

@$core.Deprecated('Use createRequestDescriptor instead')
const CreateRequest$json = {
  '1': 'CreateRequest',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'timeout', '3': 3, '4': 1, '5': 1, '10': 'timeout'},
    {'1': 'preview', '3': 4, '4': 1, '5': 8, '10': 'preview'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'resource_status_address',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusAddress'
    },
    {
      '1': 'resource_status_token',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusToken'
    },
  ],
};

/// Descriptor for `CreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequestDescriptor = $convert.base64Decode(
    'Cg1DcmVhdGVSZXF1ZXN0EhAKA3VybhgBIAEoCVIDdXJuEjcKCnByb3BlcnRpZXMYAiABKAsyFy'
    '5nb29nbGUucHJvdG9idWYuU3RydWN0Ugpwcm9wZXJ0aWVzEhgKB3RpbWVvdXQYAyABKAFSB3Rp'
    'bWVvdXQSGAoHcHJldmlldxgEIAEoCFIHcHJldmlldxISCgRuYW1lGAUgASgJUgRuYW1lEhIKBH'
    'R5cGUYBiABKAlSBHR5cGUSNgoXcmVzb3VyY2Vfc3RhdHVzX2FkZHJlc3MYByABKAlSFXJlc291'
    'cmNlU3RhdHVzQWRkcmVzcxIyChVyZXNvdXJjZV9zdGF0dXNfdG9rZW4YCCABKAlSE3Jlc291cm'
    'NlU3RhdHVzVG9rZW4=');

@$core.Deprecated('Use createResponseDescriptor instead')
const CreateResponse$json = {
  '1': 'CreateResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {
      '1': 'refresh_before_update',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'refreshBeforeUpdate'
    },
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSNwoKcHJvcGVydGllcxgCIAEoCzIXLm'
    'dvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCnByb3BlcnRpZXMSMgoVcmVmcmVzaF9iZWZvcmVfdXBk'
    'YXRlGAMgASgIUhNyZWZyZXNoQmVmb3JlVXBkYXRl');

@$core.Deprecated('Use readRequestDescriptor instead')
const ReadRequest$json = {
  '1': 'ReadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'urn', '3': 2, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'properties',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {
      '1': 'inputs',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'resource_status_address',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusAddress'
    },
    {
      '1': 'resource_status_token',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusToken'
    },
    {
      '1': 'old_views',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.View',
      '10': 'oldViews'
    },
  ],
};

/// Descriptor for `ReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readRequestDescriptor = $convert.base64Decode(
    'CgtSZWFkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSEAoDdXJuGAIgASgJUgN1cm4SNwoKcHJvcG'
    'VydGllcxgDIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCnByb3BlcnRpZXMSLwoGaW5w'
    'dXRzGAQgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIGaW5wdXRzEhIKBG5hbWUYBSABKA'
    'lSBG5hbWUSEgoEdHlwZRgGIAEoCVIEdHlwZRI2ChdyZXNvdXJjZV9zdGF0dXNfYWRkcmVzcxgH'
    'IAEoCVIVcmVzb3VyY2VTdGF0dXNBZGRyZXNzEjIKFXJlc291cmNlX3N0YXR1c190b2tlbhgIIA'
    'EoCVITcmVzb3VyY2VTdGF0dXNUb2tlbhIsCglvbGRfdmlld3MYCSADKAsyDy5wdWx1bWlycGMu'
    'Vmlld1IIb2xkVmlld3M=');

@$core.Deprecated('Use readResponseDescriptor instead')
const ReadResponse$json = {
  '1': 'ReadResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {
      '1': 'inputs',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'refresh_before_update',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'refreshBeforeUpdate'
    },
  ],
};

/// Descriptor for `ReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readResponseDescriptor = $convert.base64Decode(
    'CgxSZWFkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEjcKCnByb3BlcnRpZXMYAiABKAsyFy5nb2'
    '9nbGUucHJvdG9idWYuU3RydWN0Ugpwcm9wZXJ0aWVzEi8KBmlucHV0cxgDIAEoCzIXLmdvb2ds'
    'ZS5wcm90b2J1Zi5TdHJ1Y3RSBmlucHV0cxIyChVyZWZyZXNoX2JlZm9yZV91cGRhdGUYBCABKA'
    'hSE3JlZnJlc2hCZWZvcmVVcGRhdGU=');

@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'urn', '3': 2, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'olds',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'olds'
    },
    {
      '1': 'news',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'news'
    },
    {'1': 'timeout', '3': 5, '4': 1, '5': 1, '10': 'timeout'},
    {'1': 'ignoreChanges', '3': 6, '4': 3, '5': 9, '10': 'ignoreChanges'},
    {'1': 'preview', '3': 7, '4': 1, '5': 8, '10': 'preview'},
    {
      '1': 'old_inputs',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'oldInputs'
    },
    {'1': 'name', '3': 9, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 10, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'resource_status_address',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusAddress'
    },
    {
      '1': 'resource_status_token',
      '3': 12,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusToken'
    },
    {
      '1': 'old_views',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.View',
      '10': 'oldViews'
    },
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIQCgN1cm4YAiABKAlSA3VybhIrCgRvbG'
    'RzGAMgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIEb2xkcxIrCgRuZXdzGAQgASgLMhcu'
    'Z29vZ2xlLnByb3RvYnVmLlN0cnVjdFIEbmV3cxIYCgd0aW1lb3V0GAUgASgBUgd0aW1lb3V0Ei'
    'QKDWlnbm9yZUNoYW5nZXMYBiADKAlSDWlnbm9yZUNoYW5nZXMSGAoHcHJldmlldxgHIAEoCFIH'
    'cHJldmlldxI2CgpvbGRfaW5wdXRzGAggASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIJb2'
    'xkSW5wdXRzEhIKBG5hbWUYCSABKAlSBG5hbWUSEgoEdHlwZRgKIAEoCVIEdHlwZRI2ChdyZXNv'
    'dXJjZV9zdGF0dXNfYWRkcmVzcxgLIAEoCVIVcmVzb3VyY2VTdGF0dXNBZGRyZXNzEjIKFXJlc2'
    '91cmNlX3N0YXR1c190b2tlbhgMIAEoCVITcmVzb3VyY2VTdGF0dXNUb2tlbhIsCglvbGRfdmll'
    'd3MYDSADKAsyDy5wdWx1bWlycGMuVmlld1IIb2xkVmlld3M=');

@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {
      '1': 'properties',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {
      '1': 'refresh_before_update',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'refreshBeforeUpdate'
    },
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVSZXNwb25zZRI3Cgpwcm9wZXJ0aWVzGAEgASgLMhcuZ29vZ2xlLnByb3RvYnVmLl'
    'N0cnVjdFIKcHJvcGVydGllcxIyChVyZWZyZXNoX2JlZm9yZV91cGRhdGUYAiABKAhSE3JlZnJl'
    'c2hCZWZvcmVVcGRhdGU=');

@$core.Deprecated('Use deleteRequestDescriptor instead')
const DeleteRequest$json = {
  '1': 'DeleteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'urn', '3': 2, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'properties',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'timeout', '3': 4, '4': 1, '5': 1, '10': 'timeout'},
    {
      '1': 'old_inputs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'oldInputs'
    },
    {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 7, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'resource_status_address',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusAddress'
    },
    {
      '1': 'resource_status_token',
      '3': 9,
      '4': 1,
      '5': 9,
      '10': 'resourceStatusToken'
    },
    {
      '1': 'old_views',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.View',
      '10': 'oldViews'
    },
  ],
};

/// Descriptor for `DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequestDescriptor = $convert.base64Decode(
    'Cg1EZWxldGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIQCgN1cm4YAiABKAlSA3VybhI3Cgpwcm'
    '9wZXJ0aWVzGAMgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKcHJvcGVydGllcxIYCgd0'
    'aW1lb3V0GAQgASgBUgd0aW1lb3V0EjYKCm9sZF9pbnB1dHMYBSABKAsyFy5nb29nbGUucHJvdG'
    '9idWYuU3RydWN0UglvbGRJbnB1dHMSEgoEbmFtZRgGIAEoCVIEbmFtZRISCgR0eXBlGAcgASgJ'
    'UgR0eXBlEjYKF3Jlc291cmNlX3N0YXR1c19hZGRyZXNzGAggASgJUhVyZXNvdXJjZVN0YXR1c0'
    'FkZHJlc3MSMgoVcmVzb3VyY2Vfc3RhdHVzX3Rva2VuGAkgASgJUhNyZXNvdXJjZVN0YXR1c1Rv'
    'a2VuEiwKCW9sZF92aWV3cxgKIAMoCzIPLnB1bHVtaXJwYy5WaWV3UghvbGRWaWV3cw==');

@$core.Deprecated('Use constructRequestDescriptor instead')
const ConstructRequest$json = {
  '1': 'ConstructRequest',
  '2': [
    {'1': 'project', '3': 1, '4': 1, '5': 9, '10': 'project'},
    {'1': 'stack', '3': 2, '4': 1, '5': 9, '10': 'stack'},
    {
      '1': 'config',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConstructRequest.ConfigEntry',
      '10': 'config'
    },
    {'1': 'dryRun', '3': 4, '4': 1, '5': 8, '10': 'dryRun'},
    {'1': 'parallel', '3': 5, '4': 1, '5': 5, '10': 'parallel'},
    {'1': 'monitorEndpoint', '3': 6, '4': 1, '5': 9, '10': 'monitorEndpoint'},
    {'1': 'type', '3': 7, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 8, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent', '3': 9, '4': 1, '5': 9, '10': 'parent'},
    {
      '1': 'inputs',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'inputDependencies',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConstructRequest.InputDependenciesEntry',
      '10': 'inputDependencies'
    },
    {
      '1': 'providers',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConstructRequest.ProvidersEntry',
      '10': 'providers'
    },
    {'1': 'dependencies', '3': 15, '4': 3, '5': 9, '10': 'dependencies'},
    {
      '1': 'configSecretKeys',
      '3': 16,
      '4': 3,
      '5': 9,
      '10': 'configSecretKeys'
    },
    {'1': 'organization', '3': 17, '4': 1, '5': 9, '10': 'organization'},
    {
      '1': 'protect',
      '3': 12,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'protect',
      '17': true
    },
    {
      '1': 'additionalSecretOutputs',
      '3': 18,
      '4': 3,
      '5': 9,
      '10': 'additionalSecretOutputs'
    },
    {
      '1': 'customTimeouts',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ConstructRequest.CustomTimeouts',
      '10': 'customTimeouts'
    },
    {'1': 'deletedWith', '3': 20, '4': 1, '5': 9, '10': 'deletedWith'},
    {
      '1': 'deleteBeforeReplace',
      '3': 21,
      '4': 1,
      '5': 8,
      '9': 1,
      '10': 'deleteBeforeReplace',
      '17': true
    },
    {'1': 'ignoreChanges', '3': 22, '4': 3, '5': 9, '10': 'ignoreChanges'},
    {
      '1': 'replaceOnChanges',
      '3': 23,
      '4': 3,
      '5': 9,
      '10': 'replaceOnChanges'
    },
    {
      '1': 'retainOnDelete',
      '3': 24,
      '4': 1,
      '5': 8,
      '9': 2,
      '10': 'retainOnDelete',
      '17': true
    },
    {
      '1': 'accepts_output_values',
      '3': 25,
      '4': 1,
      '5': 8,
      '10': 'acceptsOutputValues'
    },
    {
      '1': 'resource_hooks',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ConstructRequest.ResourceHooksBinding',
      '9': 3,
      '10': 'resourceHooks',
      '17': true
    },
    {
      '1': 'stack_trace_handle',
      '3': 27,
      '4': 1,
      '5': 9,
      '10': 'stackTraceHandle'
    },
    {'1': 'replace_with', '3': 28, '4': 3, '5': 9, '10': 'replaceWith'},
    {
      '1': 'aliases',
      '3': 29,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.Alias',
      '10': 'aliases'
    },
    {
      '1': 'replacement_trigger',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'replacementTrigger'
    },
  ],
  '3': [
    ConstructRequest_PropertyDependencies$json,
    ConstructRequest_CustomTimeouts$json,
    ConstructRequest_ConfigEntry$json,
    ConstructRequest_InputDependenciesEntry$json,
    ConstructRequest_ProvidersEntry$json,
    ConstructRequest_ResourceHooksBinding$json
  ],
  '8': [
    {'1': '_protect'},
    {'1': '_deleteBeforeReplace'},
    {'1': '_retainOnDelete'},
    {'1': '_resource_hooks'},
  ],
  '9': [
    {'1': 14, '2': 15},
  ],
};

@$core.Deprecated('Use constructRequestDescriptor instead')
const ConstructRequest_PropertyDependencies$json = {
  '1': 'PropertyDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

@$core.Deprecated('Use constructRequestDescriptor instead')
const ConstructRequest_CustomTimeouts$json = {
  '1': 'CustomTimeouts',
  '2': [
    {'1': 'create', '3': 1, '4': 1, '5': 9, '10': 'create'},
    {'1': 'update', '3': 2, '4': 1, '5': 9, '10': 'update'},
    {'1': 'delete', '3': 3, '4': 1, '5': 9, '10': 'delete'},
  ],
};

@$core.Deprecated('Use constructRequestDescriptor instead')
const ConstructRequest_ConfigEntry$json = {
  '1': 'ConfigEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use constructRequestDescriptor instead')
const ConstructRequest_InputDependenciesEntry$json = {
  '1': 'InputDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ConstructRequest.PropertyDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use constructRequestDescriptor instead')
const ConstructRequest_ProvidersEntry$json = {
  '1': 'ProvidersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use constructRequestDescriptor instead')
const ConstructRequest_ResourceHooksBinding$json = {
  '1': 'ResourceHooksBinding',
  '2': [
    {'1': 'before_create', '3': 1, '4': 3, '5': 9, '10': 'beforeCreate'},
    {'1': 'after_create', '3': 2, '4': 3, '5': 9, '10': 'afterCreate'},
    {'1': 'before_update', '3': 3, '4': 3, '5': 9, '10': 'beforeUpdate'},
    {'1': 'after_update', '3': 4, '4': 3, '5': 9, '10': 'afterUpdate'},
    {'1': 'before_delete', '3': 5, '4': 3, '5': 9, '10': 'beforeDelete'},
    {'1': 'after_delete', '3': 6, '4': 3, '5': 9, '10': 'afterDelete'},
    {'1': 'on_error', '3': 7, '4': 3, '5': 9, '10': 'onError'},
  ],
};

/// Descriptor for `ConstructRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constructRequestDescriptor = $convert.base64Decode(
    'ChBDb25zdHJ1Y3RSZXF1ZXN0EhgKB3Byb2plY3QYASABKAlSB3Byb2plY3QSFAoFc3RhY2sYAi'
    'ABKAlSBXN0YWNrEj8KBmNvbmZpZxgDIAMoCzInLnB1bHVtaXJwYy5Db25zdHJ1Y3RSZXF1ZXN0'
    'LkNvbmZpZ0VudHJ5UgZjb25maWcSFgoGZHJ5UnVuGAQgASgIUgZkcnlSdW4SGgoIcGFyYWxsZW'
    'wYBSABKAVSCHBhcmFsbGVsEigKD21vbml0b3JFbmRwb2ludBgGIAEoCVIPbW9uaXRvckVuZHBv'
    'aW50EhIKBHR5cGUYByABKAlSBHR5cGUSEgoEbmFtZRgIIAEoCVIEbmFtZRIWCgZwYXJlbnQYCS'
    'ABKAlSBnBhcmVudBIvCgZpbnB1dHMYCiABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgZp'
    'bnB1dHMSYAoRaW5wdXREZXBlbmRlbmNpZXMYCyADKAsyMi5wdWx1bWlycGMuQ29uc3RydWN0Um'
    'VxdWVzdC5JbnB1dERlcGVuZGVuY2llc0VudHJ5UhFpbnB1dERlcGVuZGVuY2llcxJICglwcm92'
    'aWRlcnMYDSADKAsyKi5wdWx1bWlycGMuQ29uc3RydWN0UmVxdWVzdC5Qcm92aWRlcnNFbnRyeV'
    'IJcHJvdmlkZXJzEiIKDGRlcGVuZGVuY2llcxgPIAMoCVIMZGVwZW5kZW5jaWVzEioKEGNvbmZp'
    'Z1NlY3JldEtleXMYECADKAlSEGNvbmZpZ1NlY3JldEtleXMSIgoMb3JnYW5pemF0aW9uGBEgAS'
    'gJUgxvcmdhbml6YXRpb24SHQoHcHJvdGVjdBgMIAEoCEgAUgdwcm90ZWN0iAEBEjgKF2FkZGl0'
    'aW9uYWxTZWNyZXRPdXRwdXRzGBIgAygJUhdhZGRpdGlvbmFsU2VjcmV0T3V0cHV0cxJSCg5jdX'
    'N0b21UaW1lb3V0cxgTIAEoCzIqLnB1bHVtaXJwYy5Db25zdHJ1Y3RSZXF1ZXN0LkN1c3RvbVRp'
    'bWVvdXRzUg5jdXN0b21UaW1lb3V0cxIgCgtkZWxldGVkV2l0aBgUIAEoCVILZGVsZXRlZFdpdG'
    'gSNQoTZGVsZXRlQmVmb3JlUmVwbGFjZRgVIAEoCEgBUhNkZWxldGVCZWZvcmVSZXBsYWNliAEB'
    'EiQKDWlnbm9yZUNoYW5nZXMYFiADKAlSDWlnbm9yZUNoYW5nZXMSKgoQcmVwbGFjZU9uQ2hhbm'
    'dlcxgXIAMoCVIQcmVwbGFjZU9uQ2hhbmdlcxIrCg5yZXRhaW5PbkRlbGV0ZRgYIAEoCEgCUg5y'
    'ZXRhaW5PbkRlbGV0ZYgBARIyChVhY2NlcHRzX291dHB1dF92YWx1ZXMYGSABKAhSE2FjY2VwdH'
    'NPdXRwdXRWYWx1ZXMSXAoOcmVzb3VyY2VfaG9va3MYGiABKAsyMC5wdWx1bWlycGMuQ29uc3Ry'
    'dWN0UmVxdWVzdC5SZXNvdXJjZUhvb2tzQmluZGluZ0gDUg1yZXNvdXJjZUhvb2tziAEBEiwKEn'
    'N0YWNrX3RyYWNlX2hhbmRsZRgbIAEoCVIQc3RhY2tUcmFjZUhhbmRsZRIhCgxyZXBsYWNlX3dp'
    'dGgYHCADKAlSC3JlcGxhY2VXaXRoEioKB2FsaWFzZXMYHSADKAsyEC5wdWx1bWlycGMuQWxpYX'
    'NSB2FsaWFzZXMSRwoTcmVwbGFjZW1lbnRfdHJpZ2dlchgeIAEoCzIWLmdvb2dsZS5wcm90b2J1'
    'Zi5WYWx1ZVIScmVwbGFjZW1lbnRUcmlnZ2VyGioKFFByb3BlcnR5RGVwZW5kZW5jaWVzEhIKBH'
    'VybnMYASADKAlSBHVybnMaWAoOQ3VzdG9tVGltZW91dHMSFgoGY3JlYXRlGAEgASgJUgZjcmVh'
    'dGUSFgoGdXBkYXRlGAIgASgJUgZ1cGRhdGUSFgoGZGVsZXRlGAMgASgJUgZkZWxldGUaOQoLQ2'
    '9uZmlnRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARp2'
    'ChZJbnB1dERlcGVuZGVuY2llc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EkYKBXZhbHVlGAIgAS'
    'gLMjAucHVsdW1pcnBjLkNvbnN0cnVjdFJlcXVlc3QuUHJvcGVydHlEZXBlbmRlbmNpZXNSBXZh'
    'bHVlOgI4ARo8Cg5Qcm92aWRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIA'
    'EoCVIFdmFsdWU6AjgBGokCChRSZXNvdXJjZUhvb2tzQmluZGluZxIjCg1iZWZvcmVfY3JlYXRl'
    'GAEgAygJUgxiZWZvcmVDcmVhdGUSIQoMYWZ0ZXJfY3JlYXRlGAIgAygJUgthZnRlckNyZWF0ZR'
    'IjCg1iZWZvcmVfdXBkYXRlGAMgAygJUgxiZWZvcmVVcGRhdGUSIQoMYWZ0ZXJfdXBkYXRlGAQg'
    'AygJUgthZnRlclVwZGF0ZRIjCg1iZWZvcmVfZGVsZXRlGAUgAygJUgxiZWZvcmVEZWxldGUSIQ'
    'oMYWZ0ZXJfZGVsZXRlGAYgAygJUgthZnRlckRlbGV0ZRIZCghvbl9lcnJvchgHIAMoCVIHb25F'
    'cnJvckIKCghfcHJvdGVjdEIWChRfZGVsZXRlQmVmb3JlUmVwbGFjZUIRCg9fcmV0YWluT25EZW'
    'xldGVCEQoPX3Jlc291cmNlX2hvb2tzSgQIDhAP');

@$core.Deprecated('Use constructResponseDescriptor instead')
const ConstructResponse$json = {
  '1': 'ConstructResponse',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'state',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'state'
    },
    {
      '1': 'stateDependencies',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConstructResponse.StateDependenciesEntry',
      '10': 'stateDependencies'
    },
  ],
  '3': [
    ConstructResponse_PropertyDependencies$json,
    ConstructResponse_StateDependenciesEntry$json
  ],
};

@$core.Deprecated('Use constructResponseDescriptor instead')
const ConstructResponse_PropertyDependencies$json = {
  '1': 'PropertyDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

@$core.Deprecated('Use constructResponseDescriptor instead')
const ConstructResponse_StateDependenciesEntry$json = {
  '1': 'StateDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ConstructResponse.PropertyDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ConstructResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constructResponseDescriptor = $convert.base64Decode(
    'ChFDb25zdHJ1Y3RSZXNwb25zZRIQCgN1cm4YASABKAlSA3VybhItCgVzdGF0ZRgCIAEoCzIXLm'
    'dvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBXN0YXRlEmEKEXN0YXRlRGVwZW5kZW5jaWVzGAMgAygL'
    'MjMucHVsdW1pcnBjLkNvbnN0cnVjdFJlc3BvbnNlLlN0YXRlRGVwZW5kZW5jaWVzRW50cnlSEX'
    'N0YXRlRGVwZW5kZW5jaWVzGioKFFByb3BlcnR5RGVwZW5kZW5jaWVzEhIKBHVybnMYASADKAlS'
    'BHVybnMadwoWU3RhdGVEZXBlbmRlbmNpZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRJHCgV2YW'
    'x1ZRgCIAEoCzIxLnB1bHVtaXJwYy5Db25zdHJ1Y3RSZXNwb25zZS5Qcm9wZXJ0eURlcGVuZGVu'
    'Y2llc1IFdmFsdWU6AjgB');

@$core.Deprecated('Use errorResourceInitFailedDescriptor instead')
const ErrorResourceInitFailed$json = {
  '1': 'ErrorResourceInitFailed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'reasons', '3': 3, '4': 3, '5': 9, '10': 'reasons'},
    {
      '1': 'inputs',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'refresh_before_update',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'refreshBeforeUpdate'
    },
  ],
};

/// Descriptor for `ErrorResourceInitFailed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorResourceInitFailedDescriptor = $convert.base64Decode(
    'ChdFcnJvclJlc291cmNlSW5pdEZhaWxlZBIOCgJpZBgBIAEoCVICaWQSNwoKcHJvcGVydGllcx'
    'gCIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCnByb3BlcnRpZXMSGAoHcmVhc29ucxgD'
    'IAMoCVIHcmVhc29ucxIvCgZpbnB1dHMYBCABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ug'
    'ZpbnB1dHMSMgoVcmVmcmVzaF9iZWZvcmVfdXBkYXRlGAUgASgIUhNyZWZyZXNoQmVmb3JlVXBk'
    'YXRl');

@$core.Deprecated('Use getMappingRequestDescriptor instead')
const GetMappingRequest$json = {
  '1': 'GetMappingRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'provider', '3': 2, '4': 1, '5': 9, '10': 'provider'},
  ],
};

/// Descriptor for `GetMappingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingRequestDescriptor = $convert.base64Decode(
    'ChFHZXRNYXBwaW5nUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIaCghwcm92aWRlchgCIAEoCV'
    'IIcHJvdmlkZXI=');

@$core.Deprecated('Use getMappingResponseDescriptor instead')
const GetMappingResponse$json = {
  '1': 'GetMappingResponse',
  '2': [
    {'1': 'provider', '3': 1, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `GetMappingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingResponseDescriptor = $convert.base64Decode(
    'ChJHZXRNYXBwaW5nUmVzcG9uc2USGgoIcHJvdmlkZXIYASABKAlSCHByb3ZpZGVyEhIKBGRhdG'
    'EYAiABKAxSBGRhdGE=');

@$core.Deprecated('Use getMappingsRequestDescriptor instead')
const GetMappingsRequest$json = {
  '1': 'GetMappingsRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GetMappingsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingsRequestDescriptor = $convert
    .base64Decode('ChJHZXRNYXBwaW5nc1JlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXk=');

@$core.Deprecated('Use getMappingsResponseDescriptor instead')
const GetMappingsResponse$json = {
  '1': 'GetMappingsResponse',
  '2': [
    {'1': 'providers', '3': 1, '4': 3, '5': 9, '10': 'providers'},
  ],
};

/// Descriptor for `GetMappingsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingsResponseDescriptor =
    $convert.base64Decode(
        'ChNHZXRNYXBwaW5nc1Jlc3BvbnNlEhwKCXByb3ZpZGVycxgBIAMoCVIJcHJvdmlkZXJz');

@$core.Deprecated('Use viewDescriptor instead')
const View$json = {
  '1': 'View',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent_type', '3': 3, '4': 1, '5': 9, '10': 'parentType'},
    {'1': 'parent_name', '3': 4, '4': 1, '5': 9, '10': 'parentName'},
    {
      '1': 'inputs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'outputs',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'outputs'
    },
  ],
};

/// Descriptor for `View`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewDescriptor = $convert.base64Decode(
    'CgRWaWV3EhIKBHR5cGUYASABKAlSBHR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIfCgtwYXJlbn'
    'RfdHlwZRgDIAEoCVIKcGFyZW50VHlwZRIfCgtwYXJlbnRfbmFtZRgEIAEoCVIKcGFyZW50TmFt'
    'ZRIvCgZpbnB1dHMYBSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgZpbnB1dHMSMQoHb3'
    'V0cHV0cxgGIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSB291dHB1dHM=');
