// This is a generated file - do not edit.
//
// Generated from pulumi/callback.proto.

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

@$core.Deprecated('Use callbackDescriptor instead')
const Callback$json = {
  '1': 'Callback',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 9, '10': 'target'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'accepts_byte_string',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'acceptsByteString'
    },
  ],
};

/// Descriptor for `Callback`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callbackDescriptor = $convert.base64Decode(
    'CghDYWxsYmFjaxIWCgZ0YXJnZXQYASABKAlSBnRhcmdldBIUCgV0b2tlbhgCIAEoCVIFdG9rZW'
    '4SLgoTYWNjZXB0c19ieXRlX3N0cmluZxgDIAEoCFIRYWNjZXB0c0J5dGVTdHJpbmc=');

@$core.Deprecated('Use callbackInvokeRequestDescriptor instead')
const CallbackInvokeRequest$json = {
  '1': 'CallbackInvokeRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'request', '3': 2, '4': 1, '5': 12, '10': 'request'},
  ],
};

/// Descriptor for `CallbackInvokeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callbackInvokeRequestDescriptor = $convert.base64Decode(
    'ChVDYWxsYmFja0ludm9rZVJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEhgKB3JlcXVlc3'
    'QYAiABKAxSB3JlcXVlc3Q=');

@$core.Deprecated('Use callbackInvokeResponseDescriptor instead')
const CallbackInvokeResponse$json = {
  '1': 'CallbackInvokeResponse',
  '2': [
    {'1': 'response', '3': 1, '4': 1, '5': 12, '10': 'response'},
  ],
};

/// Descriptor for `CallbackInvokeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callbackInvokeResponseDescriptor =
    $convert.base64Decode(
        'ChZDYWxsYmFja0ludm9rZVJlc3BvbnNlEhoKCHJlc3BvbnNlGAEgASgMUghyZXNwb25zZQ==');
