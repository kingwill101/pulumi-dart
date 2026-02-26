import 'package:pulumi/pulumi.dart';
import 'logging_server_args.dart';

/// Create a new logging server for a given private cloud.
/// Auto-naming is currently not supported for this resource.
class LoggingServer extends CustomResource {
  /// Creation time of this resource.
  late final Output<String> createTime;

  /// Fully-qualified domain name (FQDN) or IP Address of the logging server.
  late final Output<String> hostname;
  late final Output<String> location;

  /// Required. The user-provided identifier of the `LoggingServer` to be created. This identifier must be unique among `LoggingServer` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final Output<String> loggingServerId;

  /// The resource name of this logging server. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  late final Output<String> name;

  /// Port number at which the logging server receives logs.
  late final Output<int> port;
  late final Output<String> privateCloudId;
  late final Output<String> project;

  /// Protocol used by vCenter to send logs to a logging server.
  late final Output<String> protocol;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The type of component that produces logs that will be forwarded to this logging server.
  late final Output<String> sourceType;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last update time of this resource.
  late final Output<String> updateTime;

  LoggingServer(
    String name, {
    LoggingServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:LoggingServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.hostname = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.loggingServerId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.privateCloudId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.protocol = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.sourceType = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
