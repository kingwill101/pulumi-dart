import 'package:pulumi/pulumi.dart';
import 'endpoint_response4.dart';
import 'service_args8.dart';

/// Creates a service, and returns the new service.
class Service8 extends CustomResource {
  /// The timestamp when the service was created.
  late final Output<String> createTime;

  /// Endpoints associated with this service. Returned on LookupService.ResolveService. Control plane clients should use RegistrationService.ListEndpoints.
  late final Output<List<EndpointResponse4>> endpoints;
  late final Output<String> location;

  /// Optional. Metadata for the service. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  late final Output<Map<String, String>> metadata;

  /// Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.
  late final Output<String> name;
  late final Output<String> namespaceId;
  late final Output<String> project;

  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> serviceId;

  /// A globally unique identifier (in UUID4 format) for this service.
  late final Output<String> uid;

  /// The timestamp when the service was last updated. Note: endpoints being created/deleted/updated within the service are not considered service updates for the purpose of this timestamp.
  late final Output<String> updateTime;

  Service8(
    String name, {
    ServiceArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:servicedirectory/v1beta1:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.endpoints = Output.createUnknown<List<EndpointResponse4>>();
    this.location = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.namespaceId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.serviceId = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
