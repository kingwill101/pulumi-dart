import 'package:pulumi/pulumi.dart';
import 'get_instance_serial_port_args.dart';
import 'get_instance_serial_port_result.dart';

/// Get the serial port output from a Compute Instance. For more information see
/// the official [API](https://cloud.google.com/compute/docs/instances/viewing-serial-port-output) documentation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serial = gcp.compute.getInstanceSerialPort({
/// instance: "my-instance",
/// zone: "us-central1-a",
/// port: 1,
/// });
/// export const serialOut = serial.then(serial => serial.contents);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// serial = gcp.compute.get_instance_serial_port(instance="my-instance",
/// zone="us-central1-a",
/// port=1)
/// pulumi.export("serialOut", serial.contents)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serial = Gcp.Compute.GetInstanceSerialPort.Invoke(new()
/// {
/// Instance = "my-instance",
/// Zone = "us-central1-a",
/// Port = 1,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["serialOut"] = serial.Apply(getInstanceSerialPortResult => getInstanceSerialPortResult.Contents),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// serial, err := compute.GetInstanceSerialPort(ctx, &compute.GetInstanceSerialPortArgs{
/// Instance: "my-instance",
/// Zone:     pulumi.StringRef("us-central1-a"),
/// Port:     1,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("serialOut", serial.Contents)
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceSerialPortArgs;
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
/// final var serial = ComputeFunctions.getInstanceSerialPort(GetInstanceSerialPortArgs.builder()
/// .instance("my-instance")
/// .zone("us-central1-a")
/// .port(1)
/// .build());
///
/// ctx.export("serialOut", serial.contents());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// serial:
/// fn::invoke:
/// function: gcp:compute:getInstanceSerialPort
/// arguments:
/// instance: my-instance
/// zone: us-central1-a
/// port: 1
/// outputs:
/// serialOut: ${serial.contents}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Using the serial port output to generate a windows password, derived from the [official guide](https://cloud.google.com/compute/docs/instances/windows/automate-pw-generation):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const windows = new gcp.compute.Instance("windows", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: "default",
/// }],
/// name: "windows-instance",
/// machineType: "e2-medium",
/// zone: "us-central1-a",
/// bootDisk: {
/// initializeParams: {
/// image: "windows-cloud/windows-2019",
/// },
/// },
/// metadata: {
/// "serial-port-logging-enable": "TRUE",
/// "windows-keys": JSON.stringify({
/// email: "example.user@example.com",
/// expireOn: "2020-04-14T01:37:19Z",
/// exponent: "AQAB",
/// modulus: "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
/// userName: "example-user",
/// }),
/// },
/// serviceAccount: {
/// scopes: [
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// ],
/// },
/// });
/// const serial = pulumi.all([windows.name, windows.zone]).apply(([name, zone]) => gcp.compute.getInstanceSerialPortOutput({
/// instance: name,
/// zone: zone,
/// port: 4,
/// }));
/// export const serialOut = serial.apply(serial => serial.contents);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// windows = gcp.compute.Instance("windows",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "network": "default",
/// }],
/// name="windows-instance",
/// machine_type="e2-medium",
/// zone="us-central1-a",
/// boot_disk={
/// "initialize_params": {
/// "image": "windows-cloud/windows-2019",
/// },
/// },
/// metadata={
/// "serial-port-logging-enable": "TRUE",
/// "windows-keys": json.dumps({
/// "email": "example.user@example.com",
/// "expireOn": "2020-04-14T01:37:19Z",
/// "exponent": "AQAB",
/// "modulus": "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
/// "userName": "example-user",
/// }),
/// },
/// service_account={
/// "scopes": [
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// ],
/// })
/// serial = pulumi.Output.all(
/// name=windows.name,
/// zone=windows.zone
/// ).apply(lambda resolved_outputs: gcp.compute.get_instance_serial_port_output(instance=resolved_outputs['name'],
/// zone=resolved_outputs['zone'],
/// port=4))
///
/// pulumi.export("serialOut", serial.contents)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var windows = new Gcp.Compute.Instance("windows", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = "default",
/// },
/// },
/// Name = "windows-instance",
/// MachineType = "e2-medium",
/// Zone = "us-central1-a",
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = "windows-cloud/windows-2019",
/// },
/// },
/// Metadata =
/// {
/// { "serial-port-logging-enable", "TRUE" },
/// { "windows-keys", JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["email"] = "example.user@example.com",
/// ["expireOn"] = "2020-04-14T01:37:19Z",
/// ["exponent"] = "AQAB",
/// ["modulus"] = "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
/// ["userName"] = "example-user",
/// }) },
/// },
/// ServiceAccount = new Gcp.Compute.Inputs.InstanceServiceAccountArgs
/// {
/// Scopes = new[]
/// {
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// },
/// },
/// });
///
/// var serial = Gcp.Compute.GetInstanceSerialPort.Invoke(new()
/// {
/// Instance = windows.Name,
/// Zone = windows.Zone,
/// Port = 4,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["serialOut"] = serial.Apply(getInstanceSerialPortResult => getInstanceSerialPortResult.Contents),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "email":    "example.user@example.com",
/// "expireOn": "2020-04-14T01:37:19Z",
/// "exponent": "AQAB",
/// "modulus":  "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==",
/// "userName": "example-user",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// windows, err := compute.NewInstance(ctx, "windows", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Network: pulumi.String("default"),
/// },
/// },
/// Name:        pulumi.String("windows-instance"),
/// MachineType: pulumi.String("e2-medium"),
/// Zone:        pulumi.String("us-central1-a"),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String("windows-cloud/windows-2019"),
/// },
/// },
/// Metadata: pulumi.StringMap{
/// "serial-port-logging-enable": pulumi.String("TRUE"),
/// "windows-keys":               pulumi.String(json0),
/// },
/// ServiceAccount: &compute.InstanceServiceAccountArgs{
/// Scopes: pulumi.StringArray{
/// pulumi.String("userinfo-email"),
/// pulumi.String("compute-ro"),
/// pulumi.String("storage-ro"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// serial := pulumi.All(windows.Name, windows.Zone).ApplyT(func(_args []interface{}) (compute.GetInstanceSerialPortResult, error) {
/// name := _args[0].(string)
/// zone := _args[1].(string)
/// return compute.GetInstanceSerialPortResult(interface{}(compute.GetInstanceSerialPort(ctx, &compute.GetInstanceSerialPortArgs{
/// Instance: name,
/// Zone:     pulumi.StringRef(pulumi.StringRef(zone)),
/// Port:     4,
/// }, nil))), nil
/// }).(compute.GetInstanceSerialPortResultOutput)
/// ctx.Export("serialOut", serial.ApplyT(func(serial compute.GetInstanceSerialPortResult) (*string, error) {
/// return &serial.Contents, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceServiceAccountArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetInstanceSerialPortArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var windows = new Instance("windows", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .network("default")
/// .build())
/// .name("windows-instance")
/// .machineType("e2-medium")
/// .zone("us-central1-a")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image("windows-cloud/windows-2019")
/// .build())
/// .build())
/// .metadata(Map.ofEntries(
/// Map.entry("serial-port-logging-enable", "TRUE"),
/// Map.entry("windows-keys", serializeJson(
/// jsonObject(
/// jsonProperty("email", "example.user@example.com"),
/// jsonProperty("expireOn", "2020-04-14T01:37:19Z"),
/// jsonProperty("exponent", "AQAB"),
/// jsonProperty("modulus", "wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q=="),
/// jsonProperty("userName", "example-user")
/// )))
/// ))
/// .serviceAccount(InstanceServiceAccountArgs.builder()
/// .scopes(
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro")
/// .build())
/// .build());
///
/// final var serial = Output.tuple(windows.name(), windows.zone()).applyValue(values -> {
/// var name = values.t1;
/// var zone = values.t2;
/// return ComputeFunctions.getInstanceSerialPort(GetInstanceSerialPortArgs.builder()
/// .instance(name)
/// .zone(zone)
/// .port(4)
/// .build());
/// });
///
/// ctx.export("serialOut", serial.applyValue(_serial -> _serial.contents()));
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// windows:
/// type: gcp:compute:Instance
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// network: default
/// name: windows-instance
/// machineType: e2-medium
/// zone: us-central1-a
/// bootDisk:
/// initializeParams:
/// image: windows-cloud/windows-2019
/// metadata:
/// serial-port-logging-enable: TRUE
/// windows-keys:
/// fn::toJSON:
/// email: example.user@example.com
/// expireOn: 2020-04-14T01:37:19Z
/// exponent: AQAB
/// modulus: wgsquN4IBNPqIUnu+h/5Za1kujb2YRhX1vCQVQAkBwnWigcCqOBVfRa5JoZfx6KIvEXjWqa77jPvlsxM4WPqnDIM2qiK36up3SKkYwFjff6F2ni/ry8vrwXCX3sGZ1hbIHlK0O012HpA3ISeEswVZmX2X67naOvJXfY5v0hGPWqCADao+xVxrmxsZD4IWnKl1UaZzI5lhAzr8fw6utHwx1EZ/MSgsEki6tujcZfN+GUDRnmJGQSnPTXmsf7Q4DKreTZk49cuyB3prV91S0x3DYjCUpSXrkVy1Ha5XicGD/q+ystuFsJnrrhbNXJbpSjM6sjo/aduAkZJl4FmOt0R7Q==
/// userName: example-user
/// serviceAccount:
/// scopes:
/// - userinfo-email
/// - compute-ro
/// - storage-ro
/// variables:
/// serial:
/// fn::invoke:
/// function: gcp:compute:getInstanceSerialPort
/// arguments:
/// instance: ${windows.name}
/// zone: ${windows.zone}
/// port: 4
/// outputs:
/// serialOut: ${serial.contents}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceSerialPortResult> getInstanceSerialPort(
  GetInstanceSerialPortArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceSerialPort:getInstanceSerialPort',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceSerialPortResult.fromMap(result);
}
