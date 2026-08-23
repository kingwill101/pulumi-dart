// This is a generated file - do not edit.
//
// Generated from pulumi/language.proto.

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

@$core.Deprecated('Use programInfoDescriptor instead')
const ProgramInfo$json = {
  '1': 'ProgramInfo',
  '2': [
    {'1': 'root_directory', '3': 1, '4': 1, '5': 9, '10': 'rootDirectory'},
    {
      '1': 'program_directory',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'programDirectory'
    },
    {'1': 'entry_point', '3': 3, '4': 1, '5': 9, '10': 'entryPoint'},
    {
      '1': 'options',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'options'
    },
  ],
};

/// Descriptor for `ProgramInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List programInfoDescriptor = $convert.base64Decode(
    'CgtQcm9ncmFtSW5mbxIlCg5yb290X2RpcmVjdG9yeRgBIAEoCVINcm9vdERpcmVjdG9yeRIrCh'
    'Fwcm9ncmFtX2RpcmVjdG9yeRgCIAEoCVIQcHJvZ3JhbURpcmVjdG9yeRIfCgtlbnRyeV9wb2lu'
    'dBgDIAEoCVIKZW50cnlQb2ludBIxCgdvcHRpb25zGAQgASgLMhcuZ29vZ2xlLnByb3RvYnVmLl'
    'N0cnVjdFIHb3B0aW9ucw==');

@$core.Deprecated('Use aboutRequestDescriptor instead')
const AboutRequest$json = {
  '1': 'AboutRequest',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
  ],
};

/// Descriptor for `AboutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aboutRequestDescriptor = $convert.base64Decode(
    'CgxBYm91dFJlcXVlc3QSKgoEaW5mbxgBIAEoCzIWLnB1bHVtaXJwYy5Qcm9ncmFtSW5mb1IEaW'
    '5mbw==');

@$core.Deprecated('Use aboutResponseDescriptor instead')
const AboutResponse$json = {
  '1': 'AboutResponse',
  '2': [
    {'1': 'executable', '3': 1, '4': 1, '5': 9, '10': 'executable'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.AboutResponse.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': [AboutResponse_MetadataEntry$json],
};

@$core.Deprecated('Use aboutResponseDescriptor instead')
const AboutResponse_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AboutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aboutResponseDescriptor = $convert.base64Decode(
    'Cg1BYm91dFJlc3BvbnNlEh4KCmV4ZWN1dGFibGUYASABKAlSCmV4ZWN1dGFibGUSGAoHdmVyc2'
    'lvbhgCIAEoCVIHdmVyc2lvbhJCCghtZXRhZGF0YRgDIAMoCzImLnB1bHVtaXJwYy5BYm91dFJl'
    'c3BvbnNlLk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GA'
    'EgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use getProgramDependenciesRequestDescriptor instead')
const GetProgramDependenciesRequest$json = {
  '1': 'GetProgramDependenciesRequest',
  '2': [
    {
      '1': 'project',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'project',
    },
    {
      '1': 'pwd',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'pwd',
    },
    {
      '1': 'program',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'program',
    },
    {
      '1': 'transitiveDependencies',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'transitiveDependencies'
    },
    {
      '1': 'info',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
  ],
};

/// Descriptor for `GetProgramDependenciesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProgramDependenciesRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRQcm9ncmFtRGVwZW5kZW5jaWVzUmVxdWVzdBIcCgdwcm9qZWN0GAEgASgJQgIYAVIHcH'
    'JvamVjdBIUCgNwd2QYAiABKAlCAhgBUgNwd2QSHAoHcHJvZ3JhbRgDIAEoCUICGAFSB3Byb2dy'
    'YW0SNgoWdHJhbnNpdGl2ZURlcGVuZGVuY2llcxgEIAEoCFIWdHJhbnNpdGl2ZURlcGVuZGVuY2'
    'llcxIqCgRpbmZvGAUgASgLMhYucHVsdW1pcnBjLlByb2dyYW1JbmZvUgRpbmZv');

@$core.Deprecated('Use dependencyInfoDescriptor instead')
const DependencyInfo$json = {
  '1': 'DependencyInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `DependencyInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dependencyInfoDescriptor = $convert.base64Decode(
    'Cg5EZXBlbmRlbmN5SW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3ZlcnNpb24YAiABKAlSB3'
    'ZlcnNpb24=');

@$core.Deprecated('Use getProgramDependenciesResponseDescriptor instead')
const GetProgramDependenciesResponse$json = {
  '1': 'GetProgramDependenciesResponse',
  '2': [
    {
      '1': 'dependencies',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.DependencyInfo',
      '10': 'dependencies'
    },
  ],
};

/// Descriptor for `GetProgramDependenciesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProgramDependenciesResponseDescriptor =
    $convert.base64Decode(
        'Ch5HZXRQcm9ncmFtRGVwZW5kZW5jaWVzUmVzcG9uc2USPQoMZGVwZW5kZW5jaWVzGAEgAygLMh'
        'kucHVsdW1pcnBjLkRlcGVuZGVuY3lJbmZvUgxkZXBlbmRlbmNpZXM=');

@$core.Deprecated('Use getRequiredPluginsRequestDescriptor instead')
const GetRequiredPluginsRequest$json = {
  '1': 'GetRequiredPluginsRequest',
  '2': [
    {
      '1': 'project',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'project',
    },
    {
      '1': 'pwd',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'pwd',
    },
    {
      '1': 'program',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'program',
    },
    {
      '1': 'info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
  ],
};

/// Descriptor for `GetRequiredPluginsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequiredPluginsRequestDescriptor = $convert.base64Decode(
    'ChlHZXRSZXF1aXJlZFBsdWdpbnNSZXF1ZXN0EhwKB3Byb2plY3QYASABKAlCAhgBUgdwcm9qZW'
    'N0EhQKA3B3ZBgCIAEoCUICGAFSA3B3ZBIcCgdwcm9ncmFtGAMgASgJQgIYAVIHcHJvZ3JhbRIq'
    'CgRpbmZvGAQgASgLMhYucHVsdW1pcnBjLlByb2dyYW1JbmZvUgRpbmZv');

@$core.Deprecated('Use getRequiredPluginsResponseDescriptor instead')
const GetRequiredPluginsResponse$json = {
  '1': 'GetRequiredPluginsResponse',
  '2': [
    {
      '1': 'plugins',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PluginDependency',
      '10': 'plugins'
    },
  ],
};

/// Descriptor for `GetRequiredPluginsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequiredPluginsResponseDescriptor =
    $convert.base64Decode(
        'ChpHZXRSZXF1aXJlZFBsdWdpbnNSZXNwb25zZRI1CgdwbHVnaW5zGAEgAygLMhsucHVsdW1pcn'
        'BjLlBsdWdpbkRlcGVuZGVuY3lSB3BsdWdpbnM=');

@$core.Deprecated('Use getRequiredPackagesRequestDescriptor instead')
const GetRequiredPackagesRequest$json = {
  '1': 'GetRequiredPackagesRequest',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
  ],
};

/// Descriptor for `GetRequiredPackagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequiredPackagesRequestDescriptor =
    $convert.base64Decode(
        'ChpHZXRSZXF1aXJlZFBhY2thZ2VzUmVxdWVzdBIqCgRpbmZvGAEgASgLMhYucHVsdW1pcnBjLl'
        'Byb2dyYW1JbmZvUgRpbmZv');

@$core.Deprecated('Use getRequiredPackagesResponseDescriptor instead')
const GetRequiredPackagesResponse$json = {
  '1': 'GetRequiredPackagesResponse',
  '2': [
    {
      '1': 'packages',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PackageDependency',
      '10': 'packages'
    },
    {
      '1': 'specs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PackageSpec',
      '10': 'specs'
    },
  ],
};

/// Descriptor for `GetRequiredPackagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequiredPackagesResponseDescriptor =
    $convert.base64Decode(
        'ChtHZXRSZXF1aXJlZFBhY2thZ2VzUmVzcG9uc2USOAoIcGFja2FnZXMYASADKAsyHC5wdWx1bW'
        'lycGMuUGFja2FnZURlcGVuZGVuY3lSCHBhY2thZ2VzEiwKBXNwZWNzGAIgAygLMhYucHVsdW1p'
        'cnBjLlBhY2thZ2VTcGVjUgVzcGVjcw==');

@$core.Deprecated('Use runRequestDescriptor instead')
const RunRequest$json = {
  '1': 'RunRequest',
  '2': [
    {'1': 'project', '3': 1, '4': 1, '5': 9, '10': 'project'},
    {'1': 'stack', '3': 2, '4': 1, '5': 9, '10': 'stack'},
    {'1': 'pwd', '3': 3, '4': 1, '5': 9, '10': 'pwd'},
    {
      '1': 'program',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'program',
    },
    {'1': 'args', '3': 5, '4': 3, '5': 9, '10': 'args'},
    {
      '1': 'config',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RunRequest.ConfigEntry',
      '10': 'config'
    },
    {'1': 'dryRun', '3': 7, '4': 1, '5': 8, '10': 'dryRun'},
    {'1': 'parallel', '3': 8, '4': 1, '5': 5, '10': 'parallel'},
    {'1': 'monitor_address', '3': 9, '4': 1, '5': 9, '10': 'monitorAddress'},
    {
      '1': 'queryMode',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'queryMode',
    },
    {
      '1': 'configSecretKeys',
      '3': 11,
      '4': 3,
      '5': 9,
      '10': 'configSecretKeys'
    },
    {'1': 'organization', '3': 12, '4': 1, '5': 9, '10': 'organization'},
    {
      '1': 'configPropertyMap',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '8': {'3': true},
      '10': 'configPropertyMap',
    },
    {
      '1': 'info',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
    {'1': 'loader_target', '3': 15, '4': 1, '5': 9, '10': 'loaderTarget'},
    {'1': 'attach_debugger', '3': 16, '4': 1, '5': 8, '10': 'attachDebugger'},
    {'1': 'mapper_target', '3': 17, '4': 1, '5': 9, '10': 'mapperTarget'},
  ],
  '3': [RunRequest_ConfigEntry$json],
};

@$core.Deprecated('Use runRequestDescriptor instead')
const RunRequest_ConfigEntry$json = {
  '1': 'ConfigEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RunRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runRequestDescriptor = $convert.base64Decode(
    'CgpSdW5SZXF1ZXN0EhgKB3Byb2plY3QYASABKAlSB3Byb2plY3QSFAoFc3RhY2sYAiABKAlSBX'
    'N0YWNrEhAKA3B3ZBgDIAEoCVIDcHdkEhwKB3Byb2dyYW0YBCABKAlCAhgBUgdwcm9ncmFtEhIK'
    'BGFyZ3MYBSADKAlSBGFyZ3MSOQoGY29uZmlnGAYgAygLMiEucHVsdW1pcnBjLlJ1blJlcXVlc3'
    'QuQ29uZmlnRW50cnlSBmNvbmZpZxIWCgZkcnlSdW4YByABKAhSBmRyeVJ1bhIaCghwYXJhbGxl'
    'bBgIIAEoBVIIcGFyYWxsZWwSJwoPbW9uaXRvcl9hZGRyZXNzGAkgASgJUg5tb25pdG9yQWRkcm'
    'VzcxIgCglxdWVyeU1vZGUYCiABKAhCAhgBUglxdWVyeU1vZGUSKgoQY29uZmlnU2VjcmV0S2V5'
    'cxgLIAMoCVIQY29uZmlnU2VjcmV0S2V5cxIiCgxvcmdhbml6YXRpb24YDCABKAlSDG9yZ2FuaX'
    'phdGlvbhJJChFjb25maWdQcm9wZXJ0eU1hcBgNIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1'
    'Y3RCAhgBUhFjb25maWdQcm9wZXJ0eU1hcBIqCgRpbmZvGA4gASgLMhYucHVsdW1pcnBjLlByb2'
    'dyYW1JbmZvUgRpbmZvEiMKDWxvYWRlcl90YXJnZXQYDyABKAlSDGxvYWRlclRhcmdldBInCg9h'
    'dHRhY2hfZGVidWdnZXIYECABKAhSDmF0dGFjaERlYnVnZ2VyEiMKDW1hcHBlcl90YXJnZXQYES'
    'ABKAlSDG1hcHBlclRhcmdldBo5CgtDb25maWdFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2'
    'YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use runResponseDescriptor instead')
const RunResponse$json = {
  '1': 'RunResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
    {'1': 'bail', '3': 2, '4': 1, '5': 8, '10': 'bail'},
  ],
};

/// Descriptor for `RunResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runResponseDescriptor = $convert.base64Decode(
    'CgtSdW5SZXNwb25zZRIUCgVlcnJvchgBIAEoCVIFZXJyb3ISEgoEYmFpbBgCIAEoCFIEYmFpbA'
    '==');

@$core.Deprecated('Use installDependenciesRequestDescriptor instead')
const InstallDependenciesRequest$json = {
  '1': 'InstallDependenciesRequest',
  '2': [
    {
      '1': 'directory',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'directory',
    },
    {'1': 'is_terminal', '3': 2, '4': 1, '5': 8, '10': 'isTerminal'},
    {
      '1': 'info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
    {
      '1': 'use_language_version_tools',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'useLanguageVersionTools'
    },
    {'1': 'is_plugin', '3': 5, '4': 1, '5': 8, '10': 'isPlugin'},
  ],
};

/// Descriptor for `InstallDependenciesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installDependenciesRequestDescriptor = $convert.base64Decode(
    'ChpJbnN0YWxsRGVwZW5kZW5jaWVzUmVxdWVzdBIgCglkaXJlY3RvcnkYASABKAlCAhgBUglkaX'
    'JlY3RvcnkSHwoLaXNfdGVybWluYWwYAiABKAhSCmlzVGVybWluYWwSKgoEaW5mbxgDIAEoCzIW'
    'LnB1bHVtaXJwYy5Qcm9ncmFtSW5mb1IEaW5mbxI7Chp1c2VfbGFuZ3VhZ2VfdmVyc2lvbl90b2'
    '9scxgEIAEoCFIXdXNlTGFuZ3VhZ2VWZXJzaW9uVG9vbHMSGwoJaXNfcGx1Z2luGAUgASgIUghp'
    'c1BsdWdpbg==');

@$core.Deprecated('Use installDependenciesResponseDescriptor instead')
const InstallDependenciesResponse$json = {
  '1': 'InstallDependenciesResponse',
  '2': [
    {'1': 'stdout', '3': 1, '4': 1, '5': 12, '10': 'stdout'},
    {'1': 'stderr', '3': 2, '4': 1, '5': 12, '10': 'stderr'},
  ],
};

/// Descriptor for `InstallDependenciesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installDependenciesResponseDescriptor =
    $convert.base64Decode(
        'ChtJbnN0YWxsRGVwZW5kZW5jaWVzUmVzcG9uc2USFgoGc3Rkb3V0GAEgASgMUgZzdGRvdXQSFg'
        'oGc3RkZXJyGAIgASgMUgZzdGRlcnI=');

@$core.Deprecated('Use runtimeOptionsRequestDescriptor instead')
const RuntimeOptionsRequest$json = {
  '1': 'RuntimeOptionsRequest',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
  ],
};

/// Descriptor for `RuntimeOptionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runtimeOptionsRequestDescriptor = $convert.base64Decode(
    'ChVSdW50aW1lT3B0aW9uc1JlcXVlc3QSKgoEaW5mbxgBIAEoCzIWLnB1bHVtaXJwYy5Qcm9ncm'
    'FtSW5mb1IEaW5mbw==');

@$core.Deprecated('Use runtimeOptionPromptDescriptor instead')
const RuntimeOptionPrompt$json = {
  '1': 'RuntimeOptionPrompt',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'promptType',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.RuntimeOptionPrompt.RuntimeOptionType',
      '10': 'promptType'
    },
    {
      '1': 'choices',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RuntimeOptionPrompt.RuntimeOptionValue',
      '10': 'choices'
    },
    {
      '1': 'default',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.RuntimeOptionPrompt.RuntimeOptionValue',
      '10': 'default'
    },
  ],
  '3': [RuntimeOptionPrompt_RuntimeOptionValue$json],
  '4': [RuntimeOptionPrompt_RuntimeOptionType$json],
};

@$core.Deprecated('Use runtimeOptionPromptDescriptor instead')
const RuntimeOptionPrompt_RuntimeOptionValue$json = {
  '1': 'RuntimeOptionValue',
  '2': [
    {
      '1': 'promptType',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.RuntimeOptionPrompt.RuntimeOptionType',
      '10': 'promptType'
    },
    {'1': 'stringValue', '3': 2, '4': 1, '5': 9, '10': 'stringValue'},
    {'1': 'int32Value', '3': 3, '4': 1, '5': 5, '10': 'int32Value'},
    {'1': 'displayName', '3': 4, '4': 1, '5': 9, '10': 'displayName'},
  ],
};

@$core.Deprecated('Use runtimeOptionPromptDescriptor instead')
const RuntimeOptionPrompt_RuntimeOptionType$json = {
  '1': 'RuntimeOptionType',
  '2': [
    {'1': 'STRING', '2': 0},
    {'1': 'INT32', '2': 1},
  ],
};

/// Descriptor for `RuntimeOptionPrompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runtimeOptionPromptDescriptor = $convert.base64Decode(
    'ChNSdW50aW1lT3B0aW9uUHJvbXB0EhAKA2tleRgBIAEoCVIDa2V5EiAKC2Rlc2NyaXB0aW9uGA'
    'IgASgJUgtkZXNjcmlwdGlvbhJQCgpwcm9tcHRUeXBlGAMgASgOMjAucHVsdW1pcnBjLlJ1bnRp'
    'bWVPcHRpb25Qcm9tcHQuUnVudGltZU9wdGlvblR5cGVSCnByb21wdFR5cGUSSwoHY2hvaWNlcx'
    'gEIAMoCzIxLnB1bHVtaXJwYy5SdW50aW1lT3B0aW9uUHJvbXB0LlJ1bnRpbWVPcHRpb25WYWx1'
    'ZVIHY2hvaWNlcxJLCgdkZWZhdWx0GAUgASgLMjEucHVsdW1pcnBjLlJ1bnRpbWVPcHRpb25Qcm'
    '9tcHQuUnVudGltZU9wdGlvblZhbHVlUgdkZWZhdWx0GsoBChJSdW50aW1lT3B0aW9uVmFsdWUS'
    'UAoKcHJvbXB0VHlwZRgBIAEoDjIwLnB1bHVtaXJwYy5SdW50aW1lT3B0aW9uUHJvbXB0LlJ1bn'
    'RpbWVPcHRpb25UeXBlUgpwcm9tcHRUeXBlEiAKC3N0cmluZ1ZhbHVlGAIgASgJUgtzdHJpbmdW'
    'YWx1ZRIeCgppbnQzMlZhbHVlGAMgASgFUgppbnQzMlZhbHVlEiAKC2Rpc3BsYXlOYW1lGAQgAS'
    'gJUgtkaXNwbGF5TmFtZSIqChFSdW50aW1lT3B0aW9uVHlwZRIKCgZTVFJJTkcQABIJCgVJTlQz'
    'MhAB');

@$core.Deprecated('Use runtimeOptionsResponseDescriptor instead')
const RuntimeOptionsResponse$json = {
  '1': 'RuntimeOptionsResponse',
  '2': [
    {
      '1': 'prompts',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RuntimeOptionPrompt',
      '10': 'prompts'
    },
  ],
};

/// Descriptor for `RuntimeOptionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runtimeOptionsResponseDescriptor =
    $convert.base64Decode(
        'ChZSdW50aW1lT3B0aW9uc1Jlc3BvbnNlEjgKB3Byb21wdHMYASADKAsyHi5wdWx1bWlycGMuUn'
        'VudGltZU9wdGlvblByb21wdFIHcHJvbXB0cw==');

@$core.Deprecated('Use templateRequestDescriptor instead')
const TemplateRequest$json = {
  '1': 'TemplateRequest',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
    {'1': 'project_name', '3': 2, '4': 1, '5': 9, '10': 'projectName'},
  ],
};

/// Descriptor for `TemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateRequestDescriptor = $convert.base64Decode(
    'Cg9UZW1wbGF0ZVJlcXVlc3QSKgoEaW5mbxgBIAEoCzIWLnB1bHVtaXJwYy5Qcm9ncmFtSW5mb1'
    'IEaW5mbxIhCgxwcm9qZWN0X25hbWUYAiABKAlSC3Byb2plY3ROYW1l');

@$core.Deprecated('Use templateResponseDescriptor instead')
const TemplateResponse$json = {
  '1': 'TemplateResponse',
};

/// Descriptor for `TemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateResponseDescriptor =
    $convert.base64Decode('ChBUZW1wbGF0ZVJlc3BvbnNl');

@$core.Deprecated('Use runPluginRequestDescriptor instead')
const RunPluginRequest$json = {
  '1': 'RunPluginRequest',
  '2': [
    {'1': 'pwd', '3': 1, '4': 1, '5': 9, '10': 'pwd'},
    {
      '1': 'program',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'program',
    },
    {'1': 'args', '3': 3, '4': 3, '5': 9, '10': 'args'},
    {'1': 'env', '3': 4, '4': 3, '5': 9, '10': 'env'},
    {
      '1': 'info',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
    {'1': 'kind', '3': 6, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 7, '4': 1, '5': 9, '10': 'name'},
    {'1': 'attach_debugger', '3': 8, '4': 1, '5': 8, '10': 'attachDebugger'},
    {'1': 'loader_target', '3': 9, '4': 1, '5': 9, '10': 'loaderTarget'},
  ],
};

/// Descriptor for `RunPluginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runPluginRequestDescriptor = $convert.base64Decode(
    'ChBSdW5QbHVnaW5SZXF1ZXN0EhAKA3B3ZBgBIAEoCVIDcHdkEhwKB3Byb2dyYW0YAiABKAlCAh'
    'gBUgdwcm9ncmFtEhIKBGFyZ3MYAyADKAlSBGFyZ3MSEAoDZW52GAQgAygJUgNlbnYSKgoEaW5m'
    'bxgFIAEoCzIWLnB1bHVtaXJwYy5Qcm9ncmFtSW5mb1IEaW5mbxISCgRraW5kGAYgASgJUgRraW'
    '5kEhIKBG5hbWUYByABKAlSBG5hbWUSJwoPYXR0YWNoX2RlYnVnZ2VyGAggASgIUg5hdHRhY2hE'
    'ZWJ1Z2dlchIjCg1sb2FkZXJfdGFyZ2V0GAkgASgJUgxsb2FkZXJUYXJnZXQ=');

@$core.Deprecated('Use runPluginResponseDescriptor instead')
const RunPluginResponse$json = {
  '1': 'RunPluginResponse',
  '2': [
    {'1': 'stdout', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'stdout'},
    {'1': 'stderr', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'stderr'},
    {'1': 'exitcode', '3': 3, '4': 1, '5': 5, '9': 0, '10': 'exitcode'},
  ],
  '8': [
    {'1': 'output'},
  ],
};

/// Descriptor for `RunPluginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runPluginResponseDescriptor = $convert.base64Decode(
    'ChFSdW5QbHVnaW5SZXNwb25zZRIYCgZzdGRvdXQYASABKAxIAFIGc3Rkb3V0EhgKBnN0ZGVych'
    'gCIAEoDEgAUgZzdGRlcnISHAoIZXhpdGNvZGUYAyABKAVIAFIIZXhpdGNvZGVCCAoGb3V0cHV0');

@$core.Deprecated('Use generateProgramRequestDescriptor instead')
const GenerateProgramRequest$json = {
  '1': 'GenerateProgramRequest',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.GenerateProgramRequest.SourceEntry',
      '10': 'source'
    },
    {'1': 'loader_target', '3': 2, '4': 1, '5': 9, '10': 'loaderTarget'},
    {'1': 'strict', '3': 3, '4': 1, '5': 8, '10': 'strict'},
  ],
  '3': [GenerateProgramRequest_SourceEntry$json],
};

@$core.Deprecated('Use generateProgramRequestDescriptor instead')
const GenerateProgramRequest_SourceEntry$json = {
  '1': 'SourceEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GenerateProgramRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateProgramRequestDescriptor = $convert.base64Decode(
    'ChZHZW5lcmF0ZVByb2dyYW1SZXF1ZXN0EkUKBnNvdXJjZRgBIAMoCzItLnB1bHVtaXJwYy5HZW'
    '5lcmF0ZVByb2dyYW1SZXF1ZXN0LlNvdXJjZUVudHJ5UgZzb3VyY2USIwoNbG9hZGVyX3Rhcmdl'
    'dBgCIAEoCVIMbG9hZGVyVGFyZ2V0EhYKBnN0cmljdBgDIAEoCFIGc3RyaWN0GjkKC1NvdXJjZU'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use generateProgramResponseDescriptor instead')
const GenerateProgramResponse$json = {
  '1': 'GenerateProgramResponse',
  '2': [
    {
      '1': 'diagnostics',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.codegen.Diagnostic',
      '10': 'diagnostics'
    },
    {
      '1': 'source',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.GenerateProgramResponse.SourceEntry',
      '10': 'source'
    },
  ],
  '3': [GenerateProgramResponse_SourceEntry$json],
};

@$core.Deprecated('Use generateProgramResponseDescriptor instead')
const GenerateProgramResponse_SourceEntry$json = {
  '1': 'SourceEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GenerateProgramResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateProgramResponseDescriptor = $convert.base64Decode(
    'ChdHZW5lcmF0ZVByb2dyYW1SZXNwb25zZRI/CgtkaWFnbm9zdGljcxgBIAMoCzIdLnB1bHVtaX'
    'JwYy5jb2RlZ2VuLkRpYWdub3N0aWNSC2RpYWdub3N0aWNzEkYKBnNvdXJjZRgCIAMoCzIuLnB1'
    'bHVtaXJwYy5HZW5lcmF0ZVByb2dyYW1SZXNwb25zZS5Tb3VyY2VFbnRyeVIGc291cmNlGjkKC1'
    'NvdXJjZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use generateProjectRequestDescriptor instead')
const GenerateProjectRequest$json = {
  '1': 'GenerateProjectRequest',
  '2': [
    {'1': 'source_directory', '3': 1, '4': 1, '5': 9, '10': 'sourceDirectory'},
    {'1': 'target_directory', '3': 2, '4': 1, '5': 9, '10': 'targetDirectory'},
    {'1': 'project', '3': 3, '4': 1, '5': 9, '10': 'project'},
    {'1': 'strict', '3': 4, '4': 1, '5': 8, '10': 'strict'},
    {'1': 'loader_target', '3': 5, '4': 1, '5': 9, '10': 'loaderTarget'},
    {
      '1': 'local_dependencies',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.GenerateProjectRequest.LocalDependenciesEntry',
      '10': 'localDependencies'
    },
  ],
  '3': [GenerateProjectRequest_LocalDependenciesEntry$json],
};

@$core.Deprecated('Use generateProjectRequestDescriptor instead')
const GenerateProjectRequest_LocalDependenciesEntry$json = {
  '1': 'LocalDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GenerateProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateProjectRequestDescriptor = $convert.base64Decode(
    'ChZHZW5lcmF0ZVByb2plY3RSZXF1ZXN0EikKEHNvdXJjZV9kaXJlY3RvcnkYASABKAlSD3NvdX'
    'JjZURpcmVjdG9yeRIpChB0YXJnZXRfZGlyZWN0b3J5GAIgASgJUg90YXJnZXREaXJlY3RvcnkS'
    'GAoHcHJvamVjdBgDIAEoCVIHcHJvamVjdBIWCgZzdHJpY3QYBCABKAhSBnN0cmljdBIjCg1sb2'
    'FkZXJfdGFyZ2V0GAUgASgJUgxsb2FkZXJUYXJnZXQSZwoSbG9jYWxfZGVwZW5kZW5jaWVzGAYg'
    'AygLMjgucHVsdW1pcnBjLkdlbmVyYXRlUHJvamVjdFJlcXVlc3QuTG9jYWxEZXBlbmRlbmNpZX'
    'NFbnRyeVIRbG9jYWxEZXBlbmRlbmNpZXMaRAoWTG9jYWxEZXBlbmRlbmNpZXNFbnRyeRIQCgNr'
    'ZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use generateProjectResponseDescriptor instead')
const GenerateProjectResponse$json = {
  '1': 'GenerateProjectResponse',
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

/// Descriptor for `GenerateProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateProjectResponseDescriptor =
    $convert.base64Decode(
        'ChdHZW5lcmF0ZVByb2plY3RSZXNwb25zZRI/CgtkaWFnbm9zdGljcxgBIAMoCzIdLnB1bHVtaX'
        'JwYy5jb2RlZ2VuLkRpYWdub3N0aWNSC2RpYWdub3N0aWNz');

@$core.Deprecated('Use generatePackageRequestDescriptor instead')
const GeneratePackageRequest$json = {
  '1': 'GeneratePackageRequest',
  '2': [
    {'1': 'directory', '3': 1, '4': 1, '5': 9, '10': 'directory'},
    {'1': 'schema', '3': 2, '4': 1, '5': 9, '10': 'schema'},
    {
      '1': 'extra_files',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.GeneratePackageRequest.ExtraFilesEntry',
      '10': 'extraFiles'
    },
    {'1': 'loader_target', '3': 4, '4': 1, '5': 9, '10': 'loaderTarget'},
    {
      '1': 'local_dependencies',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.GeneratePackageRequest.LocalDependenciesEntry',
      '10': 'localDependencies'
    },
    {'1': 'local', '3': 6, '4': 1, '5': 8, '10': 'local'},
  ],
  '3': [
    GeneratePackageRequest_ExtraFilesEntry$json,
    GeneratePackageRequest_LocalDependenciesEntry$json
  ],
};

@$core.Deprecated('Use generatePackageRequestDescriptor instead')
const GeneratePackageRequest_ExtraFilesEntry$json = {
  '1': 'ExtraFilesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use generatePackageRequestDescriptor instead')
const GeneratePackageRequest_LocalDependenciesEntry$json = {
  '1': 'LocalDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GeneratePackageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generatePackageRequestDescriptor = $convert.base64Decode(
    'ChZHZW5lcmF0ZVBhY2thZ2VSZXF1ZXN0EhwKCWRpcmVjdG9yeRgBIAEoCVIJZGlyZWN0b3J5Eh'
    'YKBnNjaGVtYRgCIAEoCVIGc2NoZW1hElIKC2V4dHJhX2ZpbGVzGAMgAygLMjEucHVsdW1pcnBj'
    'LkdlbmVyYXRlUGFja2FnZVJlcXVlc3QuRXh0cmFGaWxlc0VudHJ5UgpleHRyYUZpbGVzEiMKDW'
    'xvYWRlcl90YXJnZXQYBCABKAlSDGxvYWRlclRhcmdldBJnChJsb2NhbF9kZXBlbmRlbmNpZXMY'
    'BSADKAsyOC5wdWx1bWlycGMuR2VuZXJhdGVQYWNrYWdlUmVxdWVzdC5Mb2NhbERlcGVuZGVuY2'
    'llc0VudHJ5UhFsb2NhbERlcGVuZGVuY2llcxIUCgVsb2NhbBgGIAEoCFIFbG9jYWwaPQoPRXh0'
    'cmFGaWxlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOA'
    'EaRAoWTG9jYWxEZXBlbmRlbmNpZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgC'
    'IAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use generatePackageResponseDescriptor instead')
const GeneratePackageResponse$json = {
  '1': 'GeneratePackageResponse',
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

/// Descriptor for `GeneratePackageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generatePackageResponseDescriptor =
    $convert.base64Decode(
        'ChdHZW5lcmF0ZVBhY2thZ2VSZXNwb25zZRI/CgtkaWFnbm9zdGljcxgBIAMoCzIdLnB1bHVtaX'
        'JwYy5jb2RlZ2VuLkRpYWdub3N0aWNSC2RpYWdub3N0aWNz');

@$core.Deprecated('Use packRequestDescriptor instead')
const PackRequest$json = {
  '1': 'PackRequest',
  '2': [
    {
      '1': 'package_directory',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'packageDirectory'
    },
    {
      '1': 'destination_directory',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'destinationDirectory'
    },
  ],
};

/// Descriptor for `PackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packRequestDescriptor = $convert.base64Decode(
    'CgtQYWNrUmVxdWVzdBIrChFwYWNrYWdlX2RpcmVjdG9yeRgBIAEoCVIQcGFja2FnZURpcmVjdG'
    '9yeRIzChVkZXN0aW5hdGlvbl9kaXJlY3RvcnkYAiABKAlSFGRlc3RpbmF0aW9uRGlyZWN0b3J5');

@$core.Deprecated('Use packResponseDescriptor instead')
const PackResponse$json = {
  '1': 'PackResponse',
  '2': [
    {'1': 'artifact_path', '3': 1, '4': 1, '5': 9, '10': 'artifactPath'},
  ],
};

/// Descriptor for `PackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packResponseDescriptor = $convert.base64Decode(
    'CgxQYWNrUmVzcG9uc2USIwoNYXJ0aWZhY3RfcGF0aBgBIAEoCVIMYXJ0aWZhY3RQYXRo');

@$core.Deprecated('Use languageHandshakeRequestDescriptor instead')
const LanguageHandshakeRequest$json = {
  '1': 'LanguageHandshakeRequest',
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
  ],
  '8': [
    {'1': '_root_directory'},
    {'1': '_program_directory'},
  ],
};

/// Descriptor for `LanguageHandshakeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List languageHandshakeRequestDescriptor = $convert.base64Decode(
    'ChhMYW5ndWFnZUhhbmRzaGFrZVJlcXVlc3QSJQoOZW5naW5lX2FkZHJlc3MYASABKAlSDWVuZ2'
    'luZUFkZHJlc3MSKgoOcm9vdF9kaXJlY3RvcnkYAiABKAlIAFINcm9vdERpcmVjdG9yeYgBARIw'
    'ChFwcm9ncmFtX2RpcmVjdG9yeRgDIAEoCUgBUhBwcm9ncmFtRGlyZWN0b3J5iAEBQhEKD19yb2'
    '90X2RpcmVjdG9yeUIUChJfcHJvZ3JhbV9kaXJlY3Rvcnk=');

@$core.Deprecated('Use languageHandshakeResponseDescriptor instead')
const LanguageHandshakeResponse$json = {
  '1': 'LanguageHandshakeResponse',
};

/// Descriptor for `LanguageHandshakeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List languageHandshakeResponseDescriptor =
    $convert.base64Decode('ChlMYW5ndWFnZUhhbmRzaGFrZVJlc3BvbnNl');

@$core.Deprecated('Use linkRequestDescriptor instead')
const LinkRequest$json = {
  '1': 'LinkRequest',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ProgramInfo',
      '10': 'info'
    },
    {'1': 'loader_target', '3': 2, '4': 1, '5': 9, '10': 'loaderTarget'},
    {
      '1': 'packages',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.LinkRequest.LinkDependency',
      '10': 'packages'
    },
  ],
  '3': [LinkRequest_LinkDependency$json],
};

@$core.Deprecated('Use linkRequestDescriptor instead')
const LinkRequest_LinkDependency$json = {
  '1': 'LinkDependency',
  '2': [
    {
      '1': 'package',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PackageDependency',
      '10': 'package'
    },
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `LinkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkRequestDescriptor = $convert.base64Decode(
    'CgtMaW5rUmVxdWVzdBIqCgRpbmZvGAEgASgLMhYucHVsdW1pcnBjLlByb2dyYW1JbmZvUgRpbm'
    'ZvEiMKDWxvYWRlcl90YXJnZXQYAiABKAlSDGxvYWRlclRhcmdldBJBCghwYWNrYWdlcxgDIAMo'
    'CzIlLnB1bHVtaXJwYy5MaW5rUmVxdWVzdC5MaW5rRGVwZW5kZW5jeVIIcGFja2FnZXMaXAoOTG'
    'lua0RlcGVuZGVuY3kSNgoHcGFja2FnZRgBIAEoCzIcLnB1bHVtaXJwYy5QYWNrYWdlRGVwZW5k'
    'ZW5jeVIHcGFja2FnZRISCgRwYXRoGAIgASgJUgRwYXRo');

@$core.Deprecated('Use linkResponseDescriptor instead')
const LinkResponse$json = {
  '1': 'LinkResponse',
  '2': [
    {
      '1': 'import_instructions',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'importInstructions'
    },
  ],
};

/// Descriptor for `LinkResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkResponseDescriptor = $convert.base64Decode(
    'CgxMaW5rUmVzcG9uc2USLwoTaW1wb3J0X2luc3RydWN0aW9ucxgBIAEoCVISaW1wb3J0SW5zdH'
    'J1Y3Rpb25z');
