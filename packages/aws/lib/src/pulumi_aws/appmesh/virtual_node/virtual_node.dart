import 'package:pulumi/pulumi.dart';
import '../virtual_node_spec/virtual_node_spec.dart';
import 'virtual_node_args.dart';

/// Provides an AWS App Mesh virtual node resource.
///
/// ## Breaking Changes
///
/// Because of backward incompatible API changes (read [here](https://github.com/awslabs/aws-app-mesh-examples/issues/92)), <span pulumi-lang-nodejs="`aws.appmesh.VirtualNode`" pulumi-lang-dotnet="`aws.appmesh.VirtualNode`" pulumi-lang-go="`appmesh.VirtualNode`" pulumi-lang-python="`appmesh.VirtualNode`" pulumi-lang-yaml="`aws.appmesh.VirtualNode`" pulumi-lang-java="`aws.appmesh.VirtualNode`">`aws.appmesh.VirtualNode`</span> resource definitions created with provider versions earlier than v2.3.0 will need to be modified:
///
/// * Rename the <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span> attribute of the <span pulumi-lang-nodejs="`dns`" pulumi-lang-dotnet="`Dns`" pulumi-lang-go="`dns`" pulumi-lang-python="`dns`" pulumi-lang-yaml="`dns`" pulumi-lang-java="`dns`">`dns`</span> object to <span pulumi-lang-nodejs="`hostname`" pulumi-lang-dotnet="`Hostname`" pulumi-lang-go="`hostname`" pulumi-lang-python="`hostname`" pulumi-lang-yaml="`hostname`" pulumi-lang-java="`hostname`">`hostname`</span>.
///
/// * Replace the <span pulumi-lang-nodejs="`backends`" pulumi-lang-dotnet="`Backends`" pulumi-lang-go="`backends`" pulumi-lang-python="`backends`" pulumi-lang-yaml="`backends`" pulumi-lang-java="`backends`">`backends`</span> attribute of the <span pulumi-lang-nodejs="`spec`" pulumi-lang-dotnet="`Spec`" pulumi-lang-go="`spec`" pulumi-lang-python="`spec`" pulumi-lang-yaml="`spec`" pulumi-lang-java="`spec`">`spec`</span> object with one or more <span pulumi-lang-nodejs="`backend`" pulumi-lang-dotnet="`Backend`" pulumi-lang-go="`backend`" pulumi-lang-python="`backend`" pulumi-lang-yaml="`backend`" pulumi-lang-java="`backend`">`backend`</span> configuration blocks,
/// setting <span pulumi-lang-nodejs="`virtualServiceName`" pulumi-lang-dotnet="`VirtualServiceName`" pulumi-lang-go="`virtualServiceName`" pulumi-lang-python="`virtual_service_name`" pulumi-lang-yaml="`virtualServiceName`" pulumi-lang-java="`virtualServiceName`">`virtual_service_name`</span> to the name of the service.
///
/// The state associated with existing resources will automatically be migrated.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
/// name: "serviceBv1",
/// meshName: simple.id,
/// spec: {
/// backends: [{
/// virtualService: {
/// virtualServiceName: "servicea.simpleapp.local",
/// },
/// }],
/// listeners: [{
/// portMapping: {
/// port: 8080,
/// protocol: "http",
/// },
/// }],
/// serviceDiscovery: {
/// dns: {
/// hostname: "serviceb.simpleapp.local",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
/// name="serviceBv1",
/// mesh_name=simple["id"],
/// spec={
/// "backends": [{
/// "virtual_service": {
/// "virtual_service_name": "servicea.simpleapp.local",
/// },
/// }],
/// "listeners": [{
/// "port_mapping": {
/// "port": 8080,
/// "protocol": "http",
/// },
/// }],
/// "service_discovery": {
/// "dns": {
/// "hostname": "serviceb.simpleapp.local",
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
/// {
/// Name = "serviceBv1",
/// MeshName = simple.Id,
/// Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
/// {
/// Backends = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
/// {
/// VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
/// {
/// VirtualServiceName = "servicea.simpleapp.local",
/// },
/// },
/// },
/// Listeners = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
/// {
/// PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
/// {
/// Port = 8080,
/// Protocol = "http",
/// },
/// },
/// },
/// ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
/// {
/// Dns = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryDnsArgs
/// {
/// Hostname = "serviceb.simpleapp.local",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// Name:     pulumi.String("serviceBv1"),
/// MeshName: pulumi.Any(simple.Id),
/// Spec: &appmesh.VirtualNodeSpecArgs{
/// Backends: appmesh.VirtualNodeSpecBackendArray{
/// &appmesh.VirtualNodeSpecBackendArgs{
/// VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// },
/// },
/// },
/// Listeners: appmesh.VirtualNodeSpecListenerArray{
/// &appmesh.VirtualNodeSpecListenerArgs{
/// PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// Port:     pulumi.Int(8080),
/// Protocol: pulumi.String("http"),
/// },
/// },
/// },
/// ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// Dns: &appmesh.VirtualNodeSpecServiceDiscoveryDnsArgs{
/// Hostname: pulumi.String("serviceb.simpleapp.local"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryDnsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
/// .name("serviceBv1")
/// .meshName(simple.id())
/// .spec(VirtualNodeSpecArgs.builder()
/// .backends(VirtualNodeSpecBackendArgs.builder()
/// .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
/// .virtualServiceName("servicea.simpleapp.local")
/// .build())
/// .build())
/// .listeners(VirtualNodeSpecListenerArgs.builder()
/// .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
/// .port(8080)
/// .protocol("http")
/// .build())
/// .build())
/// .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
/// .dns(VirtualNodeSpecServiceDiscoveryDnsArgs.builder()
/// .hostname("serviceb.simpleapp.local")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serviceb1:
/// type: aws:appmesh:VirtualNode
/// properties:
/// name: serviceBv1
/// meshName: ${simple.id}
/// spec:
/// backends:
/// - virtualService:
/// virtualServiceName: servicea.simpleapp.local
/// listeners:
/// - portMapping:
/// port: 8080
/// protocol: http
/// serviceDiscovery:
/// dns:
/// hostname: serviceb.simpleapp.local
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS Cloud Map Service Discovery
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicediscovery.HttpNamespace("example", {name: "example-ns"});
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
/// name: "serviceBv1",
/// meshName: simple.id,
/// spec: {
/// backends: [{
/// virtualService: {
/// virtualServiceName: "servicea.simpleapp.local",
/// },
/// }],
/// listeners: [{
/// portMapping: {
/// port: 8080,
/// protocol: "http",
/// },
/// }],
/// serviceDiscovery: {
/// awsCloudMap: {
/// attributes: {
/// stack: "blue",
/// },
/// serviceName: "serviceb1",
/// namespaceName: example.name,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.HttpNamespace("example", name="example-ns")
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
/// name="serviceBv1",
/// mesh_name=simple["id"],
/// spec={
/// "backends": [{
/// "virtual_service": {
/// "virtual_service_name": "servicea.simpleapp.local",
/// },
/// }],
/// "listeners": [{
/// "port_mapping": {
/// "port": 8080,
/// "protocol": "http",
/// },
/// }],
/// "service_discovery": {
/// "aws_cloud_map": {
/// "attributes": {
/// "stack": "blue",
/// },
/// "service_name": "serviceb1",
/// "namespace_name": example.name,
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceDiscovery.HttpNamespace("example", new()
/// {
/// Name = "example-ns",
/// });
///
/// var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
/// {
/// Name = "serviceBv1",
/// MeshName = simple.Id,
/// Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
/// {
/// Backends = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
/// {
/// VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
/// {
/// VirtualServiceName = "servicea.simpleapp.local",
/// },
/// },
/// },
/// Listeners = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
/// {
/// PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
/// {
/// Port = 8080,
/// Protocol = "http",
/// },
/// },
/// },
/// ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
/// {
/// AwsCloudMap = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs
/// {
/// Attributes =
/// {
/// { "stack", "blue" },
/// },
/// ServiceName = "serviceb1",
/// NamespaceName = example.Name,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := servicediscovery.NewHttpNamespace(ctx, "example", &servicediscovery.HttpNamespaceArgs{
/// Name: pulumi.String("example-ns"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// Name:     pulumi.String("serviceBv1"),
/// MeshName: pulumi.Any(simple.Id),
/// Spec: &appmesh.VirtualNodeSpecArgs{
/// Backends: appmesh.VirtualNodeSpecBackendArray{
/// &appmesh.VirtualNodeSpecBackendArgs{
/// VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// },
/// },
/// },
/// Listeners: appmesh.VirtualNodeSpecListenerArray{
/// &appmesh.VirtualNodeSpecListenerArgs{
/// PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// Port:     pulumi.Int(8080),
/// Protocol: pulumi.String("http"),
/// },
/// },
/// },
/// ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// AwsCloudMap: &appmesh.VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs{
/// Attributes: pulumi.StringMap{
/// "stack": pulumi.String("blue"),
/// },
/// ServiceName:   pulumi.String("serviceb1"),
/// NamespaceName: example.Name,
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicediscovery.HttpNamespace;
/// import com.pulumi.aws.servicediscovery.HttpNamespaceArgs;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new HttpNamespace("example", HttpNamespaceArgs.builder()
/// .name("example-ns")
/// .build());
///
/// var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
/// .name("serviceBv1")
/// .meshName(simple.id())
/// .spec(VirtualNodeSpecArgs.builder()
/// .backends(VirtualNodeSpecBackendArgs.builder()
/// .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
/// .virtualServiceName("servicea.simpleapp.local")
/// .build())
/// .build())
/// .listeners(VirtualNodeSpecListenerArgs.builder()
/// .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
/// .port(8080)
/// .protocol("http")
/// .build())
/// .build())
/// .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
/// .awsCloudMap(VirtualNodeSpecServiceDiscoveryAwsCloudMapArgs.builder()
/// .attributes(Map.of("stack", "blue"))
/// .serviceName("serviceb1")
/// .namespaceName(example.name())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicediscovery:HttpNamespace
/// properties:
/// name: example-ns
/// serviceb1:
/// type: aws:appmesh:VirtualNode
/// properties:
/// name: serviceBv1
/// meshName: ${simple.id}
/// spec:
/// backends:
/// - virtualService:
/// virtualServiceName: servicea.simpleapp.local
/// listeners:
/// - portMapping:
/// port: 8080
/// protocol: http
/// serviceDiscovery:
/// awsCloudMap:
/// attributes:
/// stack: blue
/// serviceName: serviceb1
/// namespaceName: ${example.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Listener Health Check
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
/// name: "serviceBv1",
/// meshName: simple.id,
/// spec: {
/// backends: [{
/// virtualService: {
/// virtualServiceName: "servicea.simpleapp.local",
/// },
/// }],
/// listeners: [{
/// portMapping: {
/// port: 8080,
/// protocol: "http",
/// },
/// healthCheck: {
/// protocol: "http",
/// path: "/ping",
/// healthyThreshold: 2,
/// unhealthyThreshold: 2,
/// timeoutMillis: 2000,
/// intervalMillis: 5000,
/// },
/// }],
/// serviceDiscovery: {
/// dns: {
/// hostname: "serviceb.simpleapp.local",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
/// name="serviceBv1",
/// mesh_name=simple["id"],
/// spec={
/// "backends": [{
/// "virtual_service": {
/// "virtual_service_name": "servicea.simpleapp.local",
/// },
/// }],
/// "listeners": [{
/// "port_mapping": {
/// "port": 8080,
/// "protocol": "http",
/// },
/// "health_check": {
/// "protocol": "http",
/// "path": "/ping",
/// "healthy_threshold": 2,
/// "unhealthy_threshold": 2,
/// "timeout_millis": 2000,
/// "interval_millis": 5000,
/// },
/// }],
/// "service_discovery": {
/// "dns": {
/// "hostname": "serviceb.simpleapp.local",
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
/// {
/// Name = "serviceBv1",
/// MeshName = simple.Id,
/// Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
/// {
/// Backends = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
/// {
/// VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
/// {
/// VirtualServiceName = "servicea.simpleapp.local",
/// },
/// },
/// },
/// Listeners = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
/// {
/// PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
/// {
/// Port = 8080,
/// Protocol = "http",
/// },
/// HealthCheck = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerHealthCheckArgs
/// {
/// Protocol = "http",
/// Path = "/ping",
/// HealthyThreshold = 2,
/// UnhealthyThreshold = 2,
/// TimeoutMillis = 2000,
/// IntervalMillis = 5000,
/// },
/// },
/// },
/// ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
/// {
/// Dns = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryDnsArgs
/// {
/// Hostname = "serviceb.simpleapp.local",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// Name:     pulumi.String("serviceBv1"),
/// MeshName: pulumi.Any(simple.Id),
/// Spec: &appmesh.VirtualNodeSpecArgs{
/// Backends: appmesh.VirtualNodeSpecBackendArray{
/// &appmesh.VirtualNodeSpecBackendArgs{
/// VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// },
/// },
/// },
/// Listeners: appmesh.VirtualNodeSpecListenerArray{
/// &appmesh.VirtualNodeSpecListenerArgs{
/// PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// Port:     pulumi.Int(8080),
/// Protocol: pulumi.String("http"),
/// },
/// HealthCheck: &appmesh.VirtualNodeSpecListenerHealthCheckArgs{
/// Protocol:           pulumi.String("http"),
/// Path:               pulumi.String("/ping"),
/// HealthyThreshold:   pulumi.Int(2),
/// UnhealthyThreshold: pulumi.Int(2),
/// TimeoutMillis:      pulumi.Int(2000),
/// IntervalMillis:     pulumi.Int(5000),
/// },
/// },
/// },
/// ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// Dns: &appmesh.VirtualNodeSpecServiceDiscoveryDnsArgs{
/// Hostname: pulumi.String("serviceb.simpleapp.local"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryDnsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
/// .name("serviceBv1")
/// .meshName(simple.id())
/// .spec(VirtualNodeSpecArgs.builder()
/// .backends(VirtualNodeSpecBackendArgs.builder()
/// .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
/// .virtualServiceName("servicea.simpleapp.local")
/// .build())
/// .build())
/// .listeners(VirtualNodeSpecListenerArgs.builder()
/// .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
/// .port(8080)
/// .protocol("http")
/// .build())
/// .healthCheck(VirtualNodeSpecListenerHealthCheckArgs.builder()
/// .protocol("http")
/// .path("/ping")
/// .healthyThreshold(2)
/// .unhealthyThreshold(2)
/// .timeoutMillis(2000)
/// .intervalMillis(5000)
/// .build())
/// .build())
/// .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
/// .dns(VirtualNodeSpecServiceDiscoveryDnsArgs.builder()
/// .hostname("serviceb.simpleapp.local")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serviceb1:
/// type: aws:appmesh:VirtualNode
/// properties:
/// name: serviceBv1
/// meshName: ${simple.id}
/// spec:
/// backends:
/// - virtualService:
/// virtualServiceName: servicea.simpleapp.local
/// listeners:
/// - portMapping:
/// port: 8080
/// protocol: http
/// healthCheck:
/// protocol: http
/// path: /ping
/// healthyThreshold: 2
/// unhealthyThreshold: 2
/// timeoutMillis: 2000
/// intervalMillis: 5000
/// serviceDiscovery:
/// dns:
/// hostname: serviceb.simpleapp.local
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Logging
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb1 = new aws.appmesh.VirtualNode("serviceb1", {
/// name: "serviceBv1",
/// meshName: simple.id,
/// spec: {
/// backends: [{
/// virtualService: {
/// virtualServiceName: "servicea.simpleapp.local",
/// },
/// }],
/// listeners: [{
/// portMapping: {
/// port: 8080,
/// protocol: "http",
/// },
/// }],
/// serviceDiscovery: {
/// dns: {
/// hostname: "serviceb.simpleapp.local",
/// },
/// },
/// logging: {
/// accessLog: {
/// file: {
/// path: "/dev/stdout",
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb1 = aws.appmesh.VirtualNode("serviceb1",
/// name="serviceBv1",
/// mesh_name=simple["id"],
/// spec={
/// "backends": [{
/// "virtual_service": {
/// "virtual_service_name": "servicea.simpleapp.local",
/// },
/// }],
/// "listeners": [{
/// "port_mapping": {
/// "port": 8080,
/// "protocol": "http",
/// },
/// }],
/// "service_discovery": {
/// "dns": {
/// "hostname": "serviceb.simpleapp.local",
/// },
/// },
/// "logging": {
/// "access_log": {
/// "file": {
/// "path": "/dev/stdout",
/// },
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceb1 = new Aws.AppMesh.VirtualNode("serviceb1", new()
/// {
/// Name = "serviceBv1",
/// MeshName = simple.Id,
/// Spec = new Aws.AppMesh.Inputs.VirtualNodeSpecArgs
/// {
/// Backends = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecBackendArgs
/// {
/// VirtualService = new Aws.AppMesh.Inputs.VirtualNodeSpecBackendVirtualServiceArgs
/// {
/// VirtualServiceName = "servicea.simpleapp.local",
/// },
/// },
/// },
/// Listeners = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualNodeSpecListenerArgs
/// {
/// PortMapping = new Aws.AppMesh.Inputs.VirtualNodeSpecListenerPortMappingArgs
/// {
/// Port = 8080,
/// Protocol = "http",
/// },
/// },
/// },
/// ServiceDiscovery = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryArgs
/// {
/// Dns = new Aws.AppMesh.Inputs.VirtualNodeSpecServiceDiscoveryDnsArgs
/// {
/// Hostname = "serviceb.simpleapp.local",
/// },
/// },
/// Logging = new Aws.AppMesh.Inputs.VirtualNodeSpecLoggingArgs
/// {
/// AccessLog = new Aws.AppMesh.Inputs.VirtualNodeSpecLoggingAccessLogArgs
/// {
/// File = new Aws.AppMesh.Inputs.VirtualNodeSpecLoggingAccessLogFileArgs
/// {
/// Path = "/dev/stdout",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appmesh.NewVirtualNode(ctx, "serviceb1", &appmesh.VirtualNodeArgs{
/// Name:     pulumi.String("serviceBv1"),
/// MeshName: pulumi.Any(simple.Id),
/// Spec: &appmesh.VirtualNodeSpecArgs{
/// Backends: appmesh.VirtualNodeSpecBackendArray{
/// &appmesh.VirtualNodeSpecBackendArgs{
/// VirtualService: &appmesh.VirtualNodeSpecBackendVirtualServiceArgs{
/// VirtualServiceName: pulumi.String("servicea.simpleapp.local"),
/// },
/// },
/// },
/// Listeners: appmesh.VirtualNodeSpecListenerArray{
/// &appmesh.VirtualNodeSpecListenerArgs{
/// PortMapping: &appmesh.VirtualNodeSpecListenerPortMappingArgs{
/// Port:     pulumi.Int(8080),
/// Protocol: pulumi.String("http"),
/// },
/// },
/// },
/// ServiceDiscovery: &appmesh.VirtualNodeSpecServiceDiscoveryArgs{
/// Dns: &appmesh.VirtualNodeSpecServiceDiscoveryDnsArgs{
/// Hostname: pulumi.String("serviceb.simpleapp.local"),
/// },
/// },
/// Logging: &appmesh.VirtualNodeSpecLoggingArgs{
/// AccessLog: &appmesh.VirtualNodeSpecLoggingAccessLogArgs{
/// File: &appmesh.VirtualNodeSpecLoggingAccessLogFileArgs{
/// Path: pulumi.String("/dev/stdout"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualNode;
/// import com.pulumi.aws.appmesh.VirtualNodeArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecServiceDiscoveryDnsArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecLoggingArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecLoggingAccessLogArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualNodeSpecLoggingAccessLogFileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var serviceb1 = new VirtualNode("serviceb1", VirtualNodeArgs.builder()
/// .name("serviceBv1")
/// .meshName(simple.id())
/// .spec(VirtualNodeSpecArgs.builder()
/// .backends(VirtualNodeSpecBackendArgs.builder()
/// .virtualService(VirtualNodeSpecBackendVirtualServiceArgs.builder()
/// .virtualServiceName("servicea.simpleapp.local")
/// .build())
/// .build())
/// .listeners(VirtualNodeSpecListenerArgs.builder()
/// .portMapping(VirtualNodeSpecListenerPortMappingArgs.builder()
/// .port(8080)
/// .protocol("http")
/// .build())
/// .build())
/// .serviceDiscovery(VirtualNodeSpecServiceDiscoveryArgs.builder()
/// .dns(VirtualNodeSpecServiceDiscoveryDnsArgs.builder()
/// .hostname("serviceb.simpleapp.local")
/// .build())
/// .build())
/// .logging(VirtualNodeSpecLoggingArgs.builder()
/// .accessLog(VirtualNodeSpecLoggingAccessLogArgs.builder()
/// .file(VirtualNodeSpecLoggingAccessLogFileArgs.builder()
/// .path("/dev/stdout")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serviceb1:
/// type: aws:appmesh:VirtualNode
/// properties:
/// name: serviceBv1
/// meshName: ${simple.id}
/// spec:
/// backends:
/// - virtualService:
/// virtualServiceName: servicea.simpleapp.local
/// listeners:
/// - portMapping:
/// port: 8080
/// protocol: http
/// serviceDiscovery:
/// dns:
/// hostname: serviceb.simpleapp.local
/// logging:
/// accessLog:
/// file:
/// path: /dev/stdout
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual nodes using <span pulumi-lang-nodejs="`meshName`" pulumi-lang-dotnet="`MeshName`" pulumi-lang-go="`meshName`" pulumi-lang-python="`mesh_name`" pulumi-lang-yaml="`meshName`" pulumi-lang-java="`meshName`">`mesh_name`</span> together with the virtual node's <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualNode:VirtualNode serviceb1 simpleapp/serviceBv1
/// ```
class VirtualNode extends CustomResource {
  /// ARN of the virtual node.
  late final Output<String> arn;

  /// Creation date of the virtual node.
  late final Output<String> createdDate;

  /// Last update date of the virtual node.
  late final Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length.
  late final Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> meshOwner;

  /// Name to use for the virtual node. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Virtual node specification to apply.
  late final Output<VirtualNodeSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  VirtualNode(
    String name, {
    VirtualNodeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualNode:VirtualNode',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdDate = Output.createUnknown<String>();
    this.lastUpdatedDate = Output.createUnknown<String>();
    this.meshName = Output.createUnknown<String>();
    this.meshOwner = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceOwner = Output.createUnknown<String>();
    this.spec = Output.createUnknown<VirtualNodeSpec>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
