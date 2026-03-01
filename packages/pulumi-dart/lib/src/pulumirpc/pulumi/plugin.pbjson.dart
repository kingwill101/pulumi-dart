// This is a generated file - do not edit.
//
// Generated from pulumi/plugin.proto.

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

@$core.Deprecated('Use pluginInfoDescriptor instead')
const PluginInfo$json = {
  '1': 'PluginInfo',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `PluginInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginInfoDescriptor = $convert
    .base64Decode('CgpQbHVnaW5JbmZvEhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24=');

@$core.Deprecated('Use pluginDependencyDescriptor instead')
const PluginDependency$json = {
  '1': 'PluginDependency',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {'1': 'server', '3': 4, '4': 1, '5': 9, '10': 'server'},
    {
      '1': 'checksums',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PluginDependency.ChecksumsEntry',
      '10': 'checksums'
    },
  ],
  '3': [PluginDependency_ChecksumsEntry$json],
};

@$core.Deprecated('Use pluginDependencyDescriptor instead')
const PluginDependency_ChecksumsEntry$json = {
  '1': 'ChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PluginDependency`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginDependencyDescriptor = $convert.base64Decode(
    'ChBQbHVnaW5EZXBlbmRlbmN5EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEa2luZBgCIAEoCVIEa2'
    'luZBIYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9uEhYKBnNlcnZlchgEIAEoCVIGc2VydmVyEkgK'
    'CWNoZWNrc3VtcxgFIAMoCzIqLnB1bHVtaXJwYy5QbHVnaW5EZXBlbmRlbmN5LkNoZWNrc3Vtc0'
    'VudHJ5UgljaGVja3N1bXMaPAoOQ2hlY2tzdW1zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoF'
    'dmFsdWUYAiABKAxSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use pluginAttachDescriptor instead')
const PluginAttach$json = {
  '1': 'PluginAttach',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `PluginAttach`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginAttachDescriptor = $convert
    .base64Decode('CgxQbHVnaW5BdHRhY2gSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');

@$core.Deprecated('Use packageParameterizationDescriptor instead')
const PackageParameterization$json = {
  '1': 'PackageParameterization',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `PackageParameterization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageParameterizationDescriptor =
    $convert.base64Decode(
        'ChdQYWNrYWdlUGFyYW1ldGVyaXphdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEhgKB3ZlcnNpb2'
        '4YAiABKAlSB3ZlcnNpb24SFAoFdmFsdWUYAyABKAxSBXZhbHVl');

@$core.Deprecated('Use packageDependencyDescriptor instead')
const PackageDependency$json = {
  '1': 'PackageDependency',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {'1': 'server', '3': 4, '4': 1, '5': 9, '10': 'server'},
    {
      '1': 'checksums',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PackageDependency.ChecksumsEntry',
      '10': 'checksums'
    },
    {
      '1': 'parameterization',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PackageParameterization',
      '10': 'parameterization'
    },
  ],
  '3': [PackageDependency_ChecksumsEntry$json],
};

@$core.Deprecated('Use packageDependencyDescriptor instead')
const PackageDependency_ChecksumsEntry$json = {
  '1': 'ChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PackageDependency`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageDependencyDescriptor = $convert.base64Decode(
    'ChFQYWNrYWdlRGVwZW5kZW5jeRISCgRuYW1lGAEgASgJUgRuYW1lEhIKBGtpbmQYAiABKAlSBG'
    'tpbmQSGAoHdmVyc2lvbhgDIAEoCVIHdmVyc2lvbhIWCgZzZXJ2ZXIYBCABKAlSBnNlcnZlchJJ'
    'CgljaGVja3N1bXMYBSADKAsyKy5wdWx1bWlycGMuUGFja2FnZURlcGVuZGVuY3kuQ2hlY2tzdW'
    '1zRW50cnlSCWNoZWNrc3VtcxJOChBwYXJhbWV0ZXJpemF0aW9uGAYgASgLMiIucHVsdW1pcnBj'
    'LlBhY2thZ2VQYXJhbWV0ZXJpemF0aW9uUhBwYXJhbWV0ZXJpemF0aW9uGjwKDkNoZWNrc3Vtc0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');
