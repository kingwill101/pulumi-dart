// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerStartupProbeGrpc {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  /// The name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  /// If this is not specified, the default behavior is defined by gRPC.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedTemplateContainersBuildInfo"" pulumi-lang-dotnet=""NestedTemplateContainersBuildInfo"" pulumi-lang-go=""nestedTemplateContainersBuildInfo"" pulumi-lang-python=""nested_template_containers_build_info"" pulumi-lang-yaml=""nestedTemplateContainersBuildInfo"" pulumi-lang-java=""nestedTemplateContainersBuildInfo"">"nested_template_containers_build_info"</span>></a>The <span pulumi-lang-nodejs="`buildInfo`" pulumi-lang-dotnet="`BuildInfo`" pulumi-lang-go="`buildInfo`" pulumi-lang-python="`build_info`" pulumi-lang-yaml="`buildInfo`" pulumi-lang-java="`buildInfo`">`build_info`</span> block contains:
  final String? service;

  ServiceTemplateContainerStartupProbeGrpc({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory ServiceTemplateContainerStartupProbeGrpc.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateContainerStartupProbeGrpc(
      port: map['port'] == null ? null : map['port'] as int,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
