import 'package:pulumi/pulumi.dart';
import '../service_binary_authorization/service_binary_authorization.dart';
import '../service_build_config/service_build_config.dart';
import '../service_condition/service_condition.dart';
import '../service_multi_region_settings/service_multi_region_settings.dart';
import '../service_scaling/service_scaling.dart';
import '../service_template/service_template2.dart';
import '../service_terminal_condition/service_terminal_condition.dart';
import '../service_traffic/service_traffic2.dart';
import '../service_traffic_status/service_traffic_status.dart';
import 'service_args3.dart';

/// Service acts as a top-level container that manages a set of configurations and revision templates which implement a network service. Service exists to provide a singular abstraction which can be access controlled, reasoned about, and which encapsulates software lifecycle decisions such as rollout policy and team resource ownership.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// ## Example Usage
///
/// ### Cloudrunv2 Service Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// scaling: {
/// maxInstanceCount: 100,
/// },
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// scaling={
/// "max_instance_count": 100,
/// },
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Scaling = new Gcp.CloudRunV2.Inputs.ServiceScalingArgs
/// {
/// MaxInstanceCount = 100,
/// },
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Scaling: &cloudrunv2.ServiceScalingArgs{
/// MaxInstanceCount: pulumi.Int(100),
/// },
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceScalingArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .scaling(ServiceScalingArgs.builder()
/// .maxInstanceCount(100)
/// .build())
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// scaling:
/// maxInstanceCount: 100
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Limits
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// template: {
/// healthCheckDisabled: true,
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// resources: {
/// limits: {
/// cpu: "2",
/// memory: "1024Mi",
/// },
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// template={
/// "health_check_disabled": True,
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "resources": {
/// "limits": {
/// "cpu": "2",
/// "memory": "1024Mi",
/// },
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// HealthCheckDisabled = true,
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// Resources = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerResourcesArgs
/// {
/// Limits =
/// {
/// { "cpu", "2" },
/// { "memory", "1024Mi" },
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// HealthCheckDisabled: pulumi.Bool(true),
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// Resources: &cloudrunv2.ServiceTemplateContainerResourcesArgs{
/// Limits: pulumi.StringMap{
/// "cpu":    pulumi.String("2"),
/// "memory": pulumi.String("1024Mi"),
/// },
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .template(ServiceTemplateArgs.builder()
/// .healthCheckDisabled(true)
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .resources(ServiceTemplateContainerResourcesArgs.builder()
/// .limits(Map.ofEntries(
/// Map.entry("cpu", "2"),
/// Map.entry("memory", "1024Mi")
/// ))
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
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// template:
/// healthCheckDisabled: true
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// resources:
/// limits:
/// cpu: '2'
/// memory: 1024Mi
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Sql
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
/// secretId: "secret-1",
/// replication: {
/// auto: {},
/// },
/// });
/// const secret_version_data = new gcp.secretmanager.SecretVersion("secret-version-data", {
/// secret: secret.name,
/// secretData: "secret-data",
/// });
/// const instance = new gcp.sql.DatabaseInstance("instance", {
/// name: "cloudrun-sql",
/// region: "us-central1",
/// databaseVersion: "MYSQL_5_7",
/// settings: {
/// tier: "db-f1-micro",
/// },
/// deletionProtection: true,
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// scaling: {
/// maxInstanceCount: 2,
/// },
/// template: {
/// volumes: [{
/// name: "cloudsql",
/// cloudSqlInstance: {
/// instances: [instance.connectionName],
/// },
/// }],
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// envs: [
/// {
/// name: "FOO",
/// value: "bar",
/// },
/// {
/// name: "SECRET_ENV_VAR",
/// valueSource: {
/// secretKeyRef: {
/// secret: secret.secretId,
/// version: "1",
/// },
/// },
/// },
/// ],
/// volumeMounts: [{
/// name: "cloudsql",
/// mountPath: "/cloudsql",
/// }],
/// }],
/// },
/// traffics: [{
/// type: "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST",
/// percent: 100,
/// }],
/// }, {
/// dependsOn: [secret_version_data],
/// });
/// const project = gcp.organizations.getProject({});
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
/// secretId: secret.id,
/// role: "roles/secretmanager.secretAccessor",
/// member: project.then(project => `serviceAccount:${project.number}-compute@developer.gserviceaccount.com`),
/// }, {
/// dependsOn: [secret],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
/// secret_id="secret-1",
/// replication={
/// "auto": {},
/// })
/// secret_version_data = gcp.secretmanager.SecretVersion("secret-version-data",
/// secret=secret.name,
/// secret_data="secret-data")
/// instance = gcp.sql.DatabaseInstance("instance",
/// name="cloudrun-sql",
/// region="us-central1",
/// database_version="MYSQL_5_7",
/// settings={
/// "tier": "db-f1-micro",
/// },
/// deletion_protection=True)
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// scaling={
/// "max_instance_count": 2,
/// },
/// template={
/// "volumes": [{
/// "name": "cloudsql",
/// "cloud_sql_instance": {
/// "instances": [instance.connection_name],
/// },
/// }],
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "envs": [
/// {
/// "name": "FOO",
/// "value": "bar",
/// },
/// {
/// "name": "SECRET_ENV_VAR",
/// "value_source": {
/// "secret_key_ref": {
/// "secret": secret.secret_id,
/// "version": "1",
/// },
/// },
/// },
/// ],
/// "volume_mounts": [{
/// "name": "cloudsql",
/// "mount_path": "/cloudsql",
/// }],
/// }],
/// },
/// traffics=[{
/// "type": "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST",
/// "percent": 100,
/// }],
/// opts = pulumi.ResourceOptions(depends_on=[secret_version_data]))
/// project = gcp.organizations.get_project()
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
/// secret_id=secret.id,
/// role="roles/secretmanager.secretAccessor",
/// member=f"serviceAccount:{project.number}-compute@developer.gserviceaccount.com",
/// opts = pulumi.ResourceOptions(depends_on=[secret]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var secret = new Gcp.SecretManager.Secret("secret", new()
/// {
/// SecretId = "secret-1",
/// Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
/// {
/// Auto = null,
/// },
/// });
///
/// var secret_version_data = new Gcp.SecretManager.SecretVersion("secret-version-data", new()
/// {
/// Secret = secret.Name,
/// SecretData = "secret-data",
/// });
///
/// var instance = new Gcp.Sql.DatabaseInstance("instance", new()
/// {
/// Name = "cloudrun-sql",
/// Region = "us-central1",
/// DatabaseVersion = "MYSQL_5_7",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-f1-micro",
/// },
/// DeletionProtection = true,
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Scaling = new Gcp.CloudRunV2.Inputs.ServiceScalingArgs
/// {
/// MaxInstanceCount = 2,
/// },
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Volumes = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeArgs
/// {
/// Name = "cloudsql",
/// CloudSqlInstance = new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeCloudSqlInstanceArgs
/// {
/// Instances = new[]
/// {
/// instance.ConnectionName,
/// },
/// },
/// },
/// },
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// Envs = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerEnvArgs
/// {
/// Name = "FOO",
/// Value = "bar",
/// },
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerEnvArgs
/// {
/// Name = "SECRET_ENV_VAR",
/// ValueSource = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerEnvValueSourceArgs
/// {
/// SecretKeyRef = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerEnvValueSourceSecretKeyRefArgs
/// {
/// Secret = secret.SecretId,
/// Version = "1",
/// },
/// },
/// },
/// },
/// VolumeMounts = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerVolumeMountArgs
/// {
/// Name = "cloudsql",
/// MountPath = "/cloudsql",
/// },
/// },
/// },
/// },
/// },
/// Traffics = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTrafficArgs
/// {
/// Type = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST",
/// Percent = 100,
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// secret_version_data,
/// },
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
/// {
/// SecretId = secret.Id,
/// Role = "roles/secretmanager.secretAccessor",
/// Member = $"serviceAccount:{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// secret,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// SecretId: pulumi.String("secret-1"),
/// Replication: &secretmanager.SecretReplicationArgs{
/// Auto: &secretmanager.SecretReplicationAutoArgs{},
/// },
/// })
/// if err != nil {
/// return err
/// }
/// secret_version_data, err := secretmanager.NewSecretVersion(ctx, "secret-version-data", &secretmanager.SecretVersionArgs{
/// Secret:     secret.Name,
/// SecretData: pulumi.String("secret-data"),
/// })
/// if err != nil {
/// return err
/// }
/// instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("cloudrun-sql"),
/// Region:          pulumi.String("us-central1"),
/// DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier: pulumi.String("db-f1-micro"),
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Scaling: &cloudrunv2.ServiceScalingArgs{
/// MaxInstanceCount: pulumi.Int(2),
/// },
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Volumes: cloudrunv2.ServiceTemplateVolumeArray{
/// &cloudrunv2.ServiceTemplateVolumeArgs{
/// Name: pulumi.String("cloudsql"),
/// CloudSqlInstance: &cloudrunv2.ServiceTemplateVolumeCloudSqlInstanceArgs{
/// Instances: pulumi.StringArray{
/// instance.ConnectionName,
/// },
/// },
/// },
/// },
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// Envs: cloudrunv2.ServiceTemplateContainerEnvArray{
/// &cloudrunv2.ServiceTemplateContainerEnvArgs{
/// Name:  pulumi.String("FOO"),
/// Value: pulumi.String("bar"),
/// },
/// &cloudrunv2.ServiceTemplateContainerEnvArgs{
/// Name: pulumi.String("SECRET_ENV_VAR"),
/// ValueSource: &cloudrunv2.ServiceTemplateContainerEnvValueSourceArgs{
/// SecretKeyRef: &cloudrunv2.ServiceTemplateContainerEnvValueSourceSecretKeyRefArgs{
/// Secret:  secret.SecretId,
/// Version: pulumi.String("1"),
/// },
/// },
/// },
/// },
/// VolumeMounts: cloudrunv2.ServiceTemplateContainerVolumeMountArray{
/// &cloudrunv2.ServiceTemplateContainerVolumeMountArgs{
/// Name:      pulumi.String("cloudsql"),
/// MountPath: pulumi.String("/cloudsql"),
/// },
/// },
/// },
/// },
/// },
/// Traffics: cloudrunv2.ServiceTrafficArray{
/// &cloudrunv2.ServiceTrafficArgs{
/// Type:    pulumi.String("TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"),
/// Percent: pulumi.Int(100),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// secret_version_data,
/// }))
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// SecretId: secret.ID(),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Member:   pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", project.Number),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// secret,
/// }))
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceScalingArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTrafficArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var secret = new Secret("secret", SecretArgs.builder()
/// .secretId("secret-1")
/// .replication(SecretReplicationArgs.builder()
/// .auto(SecretReplicationAutoArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// var secret_version_data = new SecretVersion("secret-version-data", SecretVersionArgs.builder()
/// .secret(secret.name())
/// .secretData("secret-data")
/// .build());
///
/// var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
/// .name("cloudrun-sql")
/// .region("us-central1")
/// .databaseVersion("MYSQL_5_7")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-f1-micro")
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .scaling(ServiceScalingArgs.builder()
/// .maxInstanceCount(2)
/// .build())
/// .template(ServiceTemplateArgs.builder()
/// .volumes(ServiceTemplateVolumeArgs.builder()
/// .name("cloudsql")
/// .cloudSqlInstance(ServiceTemplateVolumeCloudSqlInstanceArgs.builder()
/// .instances(instance.connectionName())
/// .build())
/// .build())
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .envs(
/// ServiceTemplateContainerEnvArgs.builder()
/// .name("FOO")
/// .value("bar")
/// .build(),
/// ServiceTemplateContainerEnvArgs.builder()
/// .name("SECRET_ENV_VAR")
/// .valueSource(ServiceTemplateContainerEnvValueSourceArgs.builder()
/// .secretKeyRef(ServiceTemplateContainerEnvValueSourceSecretKeyRefArgs.builder()
/// .secret(secret.secretId())
/// .version("1")
/// .build())
/// .build())
/// .build())
/// .volumeMounts(ServiceTemplateContainerVolumeMountArgs.builder()
/// .name("cloudsql")
/// .mountPath("/cloudsql")
/// .build())
/// .build())
/// .build())
/// .traffics(ServiceTrafficArgs.builder()
/// .type("TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST")
/// .percent(100)
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(secret_version_data)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
/// .secretId(secret.id())
/// .role("roles/secretmanager.secretAccessor")
/// .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", project.number()))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(secret)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// scaling:
/// maxInstanceCount: 2
/// template:
/// volumes:
/// - name: cloudsql
/// cloudSqlInstance:
/// instances:
/// - ${instance.connectionName}
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// envs:
/// - name: FOO
/// value: bar
/// - name: SECRET_ENV_VAR
/// valueSource:
/// secretKeyRef:
/// secret: ${secret.secretId}
/// version: '1'
/// volumeMounts:
/// - name: cloudsql
/// mountPath: /cloudsql
/// traffics:
/// - type: TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST
/// percent: 100
/// options:
/// dependsOn:
/// - ${["secret-version-data"]}
/// secret:
/// type: gcp:secretmanager:Secret
/// properties:
/// secretId: secret-1
/// replication:
/// auto: {}
/// secret-version-data:
/// type: gcp:secretmanager:SecretVersion
/// properties:
/// secret: ${secret.name}
/// secretData: secret-data
/// secret-access:
/// type: gcp:secretmanager:SecretIamMember
/// properties:
/// secretId: ${secret.id}
/// role: roles/secretmanager.secretAccessor
/// member: serviceAccount:${project.number}-compute@developer.gserviceaccount.com
/// options:
/// dependsOn:
/// - ${secret}
/// instance:
/// type: gcp:sql:DatabaseInstance
/// properties:
/// name: cloudrun-sql
/// region: us-central1
/// databaseVersion: MYSQL_5_7
/// settings:
/// tier: db-f1-micro
/// deletionProtection: true
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Vpcaccess
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customTestNetwork = new gcp.compute.Network("custom_test", {
/// name: "run-network",
/// autoCreateSubnetworks: false,
/// });
/// const customTest = new gcp.compute.Subnetwork("custom_test", {
/// name: "run-subnetwork",
/// ipCidrRange: "10.2.0.0/28",
/// region: "us-central1",
/// network: customTestNetwork.id,
/// });
/// const connector = new gcp.vpcaccess.Connector("connector", {
/// name: "run-vpc",
/// subnet: {
/// name: customTest.name,
/// },
/// machineType: "e2-standard-4",
/// minInstances: 2,
/// maxInstances: 3,
/// region: "us-central1",
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// vpcAccess: {
/// connector: connector.id,
/// egress: "ALL_TRAFFIC",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test_network = gcp.compute.Network("custom_test",
/// name="run-network",
/// auto_create_subnetworks=False)
/// custom_test = gcp.compute.Subnetwork("custom_test",
/// name="run-subnetwork",
/// ip_cidr_range="10.2.0.0/28",
/// region="us-central1",
/// network=custom_test_network.id)
/// connector = gcp.vpcaccess.Connector("connector",
/// name="run-vpc",
/// subnet={
/// "name": custom_test.name,
/// },
/// machine_type="e2-standard-4",
/// min_instances=2,
/// max_instances=3,
/// region="us-central1")
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// "vpc_access": {
/// "connector": connector.id,
/// "egress": "ALL_TRAFFIC",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var customTestNetwork = new Gcp.Compute.Network("custom_test", new()
/// {
/// Name = "run-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var customTest = new Gcp.Compute.Subnetwork("custom_test", new()
/// {
/// Name = "run-subnetwork",
/// IpCidrRange = "10.2.0.0/28",
/// Region = "us-central1",
/// Network = customTestNetwork.Id,
/// });
///
/// var connector = new Gcp.VpcAccess.Connector("connector", new()
/// {
/// Name = "run-vpc",
/// Subnet = new Gcp.VpcAccess.Inputs.ConnectorSubnetArgs
/// {
/// Name = customTest.Name,
/// },
/// MachineType = "e2-standard-4",
/// MinInstances = 2,
/// MaxInstances = 3,
/// Region = "us-central1",
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// },
/// },
/// VpcAccess = new Gcp.CloudRunV2.Inputs.ServiceTemplateVpcAccessArgs
/// {
/// Connector = connector.Id,
/// Egress = "ALL_TRAFFIC",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vpcaccess"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// customTestNetwork, err := compute.NewNetwork(ctx, "custom_test", &compute.NetworkArgs{
/// Name:                  pulumi.String("run-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// customTest, err := compute.NewSubnetwork(ctx, "custom_test", &compute.SubnetworkArgs{
/// Name:        pulumi.String("run-subnetwork"),
/// IpCidrRange: pulumi.String("10.2.0.0/28"),
/// Region:      pulumi.String("us-central1"),
/// Network:     customTestNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// connector, err := vpcaccess.NewConnector(ctx, "connector", &vpcaccess.ConnectorArgs{
/// Name: pulumi.String("run-vpc"),
/// Subnet: &vpcaccess.ConnectorSubnetArgs{
/// Name: customTest.Name,
/// },
/// MachineType:  pulumi.String("e2-standard-4"),
/// MinInstances: pulumi.Int(2),
/// MaxInstances: pulumi.Int(3),
/// Region:       pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// },
/// },
/// VpcAccess: &cloudrunv2.ServiceTemplateVpcAccessArgs{
/// Connector: connector.ID(),
/// Egress:    pulumi.String("ALL_TRAFFIC"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.vpcaccess.Connector;
/// import com.pulumi.gcp.vpcaccess.ConnectorArgs;
/// import com.pulumi.gcp.vpcaccess.inputs.ConnectorSubnetArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateVpcAccessArgs;
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
/// var customTestNetwork = new Network("customTestNetwork", NetworkArgs.builder()
/// .name("run-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var customTest = new Subnetwork("customTest", SubnetworkArgs.builder()
/// .name("run-subnetwork")
/// .ipCidrRange("10.2.0.0/28")
/// .region("us-central1")
/// .network(customTestNetwork.id())
/// .build());
///
/// var connector = new Connector("connector", ConnectorArgs.builder()
/// .name("run-vpc")
/// .subnet(ConnectorSubnetArgs.builder()
/// .name(customTest.name())
/// .build())
/// .machineType("e2-standard-4")
/// .minInstances(2)
/// .maxInstances(3)
/// .region("us-central1")
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .build())
/// .vpcAccess(ServiceTemplateVpcAccessArgs.builder()
/// .connector(connector.id())
/// .egress("ALL_TRAFFIC")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// vpcAccess:
/// connector: ${connector.id}
/// egress: ALL_TRAFFIC
/// connector:
/// type: gcp:vpcaccess:Connector
/// properties:
/// name: run-vpc
/// subnet:
/// name: ${customTest.name}
/// machineType: e2-standard-4
/// minInstances: 2
/// maxInstances: 3
/// region: us-central1
/// customTest:
/// type: gcp:compute:Subnetwork
/// name: custom_test
/// properties:
/// name: run-subnetwork
/// ipCidrRange: 10.2.0.0/28
/// region: us-central1
/// network: ${customTestNetwork.id}
/// customTestNetwork:
/// type: gcp:compute:Network
/// name: custom_test
/// properties:
/// name: run-network
/// autoCreateSubnetworks: false
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Directvpc
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// launchStage: "GA",
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// vpcAccess: {
/// networkInterfaces: [{
/// network: "default",
/// subnetwork: "default",
/// tags: [
/// "tag1",
/// "tag2",
/// "tag3",
/// ],
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// launch_stage="GA",
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// "vpc_access": {
/// "network_interfaces": [{
/// "network": "default",
/// "subnetwork": "default",
/// "tags": [
/// "tag1",
/// "tag2",
/// "tag3",
/// ],
/// }],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// LaunchStage = "GA",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// },
/// },
/// VpcAccess = new Gcp.CloudRunV2.Inputs.ServiceTemplateVpcAccessArgs
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVpcAccessNetworkInterfaceArgs
/// {
/// Network = "default",
/// Subnetwork = "default",
/// Tags = new[]
/// {
/// "tag1",
/// "tag2",
/// "tag3",
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// LaunchStage:        pulumi.String("GA"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// },
/// },
/// VpcAccess: &cloudrunv2.ServiceTemplateVpcAccessArgs{
/// NetworkInterfaces: cloudrunv2.ServiceTemplateVpcAccessNetworkInterfaceArray{
/// &cloudrunv2.ServiceTemplateVpcAccessNetworkInterfaceArgs{
/// Network:    pulumi.String("default"),
/// Subnetwork: pulumi.String("default"),
/// Tags: pulumi.StringArray{
/// pulumi.String("tag1"),
/// pulumi.String("tag2"),
/// pulumi.String("tag3"),
/// },
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateVpcAccessArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .launchStage("GA")
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .build())
/// .vpcAccess(ServiceTemplateVpcAccessArgs.builder()
/// .networkInterfaces(ServiceTemplateVpcAccessNetworkInterfaceArgs.builder()
/// .network("default")
/// .subnetwork("default")
/// .tags(
/// "tag1",
/// "tag2",
/// "tag3")
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
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// launchStage: GA
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// vpcAccess:
/// networkInterfaces:
/// - network: default
/// subnetwork: default
/// tags:
/// - tag1
/// - tag2
/// - tag3
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Gpu
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// scaling: {
/// maxInstanceCount: 1,
/// },
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// resources: {
/// limits: {
/// cpu: "4",
/// memory: "16Gi",
/// "nvidia.com/gpu": "1",
/// },
/// startupCpuBoost: true,
/// },
/// }],
/// nodeSelector: {
/// accelerator: "nvidia-l4",
/// },
/// gpuZonalRedundancyDisabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// scaling={
/// "max_instance_count": 1,
/// },
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "resources": {
/// "limits": {
/// "cpu": "4",
/// "memory": "16Gi",
/// "nvidia.com/gpu": "1",
/// },
/// "startup_cpu_boost": True,
/// },
/// }],
/// "node_selector": {
/// "accelerator": "nvidia-l4",
/// },
/// "gpu_zonal_redundancy_disabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Scaling = new Gcp.CloudRunV2.Inputs.ServiceScalingArgs
/// {
/// MaxInstanceCount = 1,
/// },
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// Resources = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerResourcesArgs
/// {
/// Limits =
/// {
/// { "cpu", "4" },
/// { "memory", "16Gi" },
/// { "nvidia.com/gpu", "1" },
/// },
/// StartupCpuBoost = true,
/// },
/// },
/// },
/// NodeSelector = new Gcp.CloudRunV2.Inputs.ServiceTemplateNodeSelectorArgs
/// {
/// Accelerator = "nvidia-l4",
/// },
/// GpuZonalRedundancyDisabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Scaling: &cloudrunv2.ServiceScalingArgs{
/// MaxInstanceCount: pulumi.Int(1),
/// },
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// Resources: &cloudrunv2.ServiceTemplateContainerResourcesArgs{
/// Limits: pulumi.StringMap{
/// "cpu":            pulumi.String("4"),
/// "memory":         pulumi.String("16Gi"),
/// "nvidia.com/gpu": pulumi.String("1"),
/// },
/// StartupCpuBoost: pulumi.Bool(true),
/// },
/// },
/// },
/// NodeSelector: &cloudrunv2.ServiceTemplateNodeSelectorArgs{
/// Accelerator: pulumi.String("nvidia-l4"),
/// },
/// GpuZonalRedundancyDisabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceScalingArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateNodeSelectorArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .scaling(ServiceScalingArgs.builder()
/// .maxInstanceCount(1)
/// .build())
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .resources(ServiceTemplateContainerResourcesArgs.builder()
/// .limits(Map.ofEntries(
/// Map.entry("cpu", "4"),
/// Map.entry("memory", "16Gi"),
/// Map.entry("nvidia.com/gpu", "1")
/// ))
/// .startupCpuBoost(true)
/// .build())
/// .build())
/// .nodeSelector(ServiceTemplateNodeSelectorArgs.builder()
/// .accelerator("nvidia-l4")
/// .build())
/// .gpuZonalRedundancyDisabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// scaling:
/// maxInstanceCount: 1
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// resources:
/// limits:
/// cpu: '4'
/// memory: 16Gi
/// nvidia.com/gpu: '1'
/// startupCpuBoost: true
/// nodeSelector:
/// accelerator: nvidia-l4
/// gpuZonalRedundancyDisabled: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Probes
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// startupProbe: {
/// initialDelaySeconds: 0,
/// timeoutSeconds: 1,
/// periodSeconds: 3,
/// failureThreshold: 1,
/// tcpSocket: {
/// port: 8080,
/// },
/// },
/// livenessProbe: {
/// httpGet: {
/// path: "/",
/// },
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "startup_probe": {
/// "initial_delay_seconds": 0,
/// "timeout_seconds": 1,
/// "period_seconds": 3,
/// "failure_threshold": 1,
/// "tcp_socket": {
/// "port": 8080,
/// },
/// },
/// "liveness_probe": {
/// "http_get": {
/// "path": "/",
/// },
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// StartupProbe = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerStartupProbeArgs
/// {
/// InitialDelaySeconds = 0,
/// TimeoutSeconds = 1,
/// PeriodSeconds = 3,
/// FailureThreshold = 1,
/// TcpSocket = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerStartupProbeTcpSocketArgs
/// {
/// Port = 8080,
/// },
/// },
/// LivenessProbe = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerLivenessProbeArgs
/// {
/// HttpGet = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerLivenessProbeHttpGetArgs
/// {
/// Path = "/",
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// StartupProbe: &cloudrunv2.ServiceTemplateContainerStartupProbeArgs{
/// InitialDelaySeconds: pulumi.Int(0),
/// TimeoutSeconds:      pulumi.Int(1),
/// PeriodSeconds:       pulumi.Int(3),
/// FailureThreshold:    pulumi.Int(1),
/// TcpSocket: &cloudrunv2.ServiceTemplateContainerStartupProbeTcpSocketArgs{
/// Port: pulumi.Int(8080),
/// },
/// },
/// LivenessProbe: &cloudrunv2.ServiceTemplateContainerLivenessProbeArgs{
/// HttpGet: &cloudrunv2.ServiceTemplateContainerLivenessProbeHttpGetArgs{
/// Path: pulumi.String("/"),
/// },
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .startupProbe(ServiceTemplateContainerStartupProbeArgs.builder()
/// .initialDelaySeconds(0)
/// .timeoutSeconds(1)
/// .periodSeconds(3)
/// .failureThreshold(1)
/// .tcpSocket(ServiceTemplateContainerStartupProbeTcpSocketArgs.builder()
/// .port(8080)
/// .build())
/// .build())
/// .livenessProbe(ServiceTemplateContainerLivenessProbeArgs.builder()
/// .httpGet(ServiceTemplateContainerLivenessProbeHttpGetArgs.builder()
/// .path("/")
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
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// startupProbe:
/// initialDelaySeconds: 0
/// timeoutSeconds: 1
/// periodSeconds: 3
/// failureThreshold: 1
/// tcpSocket:
/// port: 8080
/// livenessProbe:
/// httpGet:
/// path: /
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Secret
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
/// secretId: "secret-1",
/// replication: {
/// auto: {},
/// },
/// });
/// const secret_version_data = new gcp.secretmanager.SecretVersion("secret-version-data", {
/// secret: secret.name,
/// secretData: "secret-data",
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// template: {
/// volumes: [{
/// name: "a-volume",
/// secret: {
/// secret: secret.secretId,
/// defaultMode: 292,
/// items: [{
/// version: "1",
/// path: "my-secret",
/// }],
/// },
/// }],
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// volumeMounts: [{
/// name: "a-volume",
/// mountPath: "/secrets",
/// }],
/// }],
/// },
/// }, {
/// dependsOn: [secret_version_data],
/// });
/// const project = gcp.organizations.getProject({});
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
/// secretId: secret.id,
/// role: "roles/secretmanager.secretAccessor",
/// member: project.then(project => `serviceAccount:${project.number}-compute@developer.gserviceaccount.com`),
/// }, {
/// dependsOn: [secret],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
/// secret_id="secret-1",
/// replication={
/// "auto": {},
/// })
/// secret_version_data = gcp.secretmanager.SecretVersion("secret-version-data",
/// secret=secret.name,
/// secret_data="secret-data")
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// template={
/// "volumes": [{
/// "name": "a-volume",
/// "secret": {
/// "secret": secret.secret_id,
/// "default_mode": 292,
/// "items": [{
/// "version": "1",
/// "path": "my-secret",
/// }],
/// },
/// }],
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "volume_mounts": [{
/// "name": "a-volume",
/// "mount_path": "/secrets",
/// }],
/// }],
/// },
/// opts = pulumi.ResourceOptions(depends_on=[secret_version_data]))
/// project = gcp.organizations.get_project()
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
/// secret_id=secret.id,
/// role="roles/secretmanager.secretAccessor",
/// member=f"serviceAccount:{project.number}-compute@developer.gserviceaccount.com",
/// opts = pulumi.ResourceOptions(depends_on=[secret]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var secret = new Gcp.SecretManager.Secret("secret", new()
/// {
/// SecretId = "secret-1",
/// Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
/// {
/// Auto = null,
/// },
/// });
///
/// var secret_version_data = new Gcp.SecretManager.SecretVersion("secret-version-data", new()
/// {
/// Secret = secret.Name,
/// SecretData = "secret-data",
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Volumes = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeArgs
/// {
/// Name = "a-volume",
/// Secret = new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeSecretArgs
/// {
/// Secret = secret.SecretId,
/// DefaultMode = 292,
/// Items = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeSecretItemArgs
/// {
/// Version = "1",
/// Path = "my-secret",
/// },
/// },
/// },
/// },
/// },
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// VolumeMounts = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerVolumeMountArgs
/// {
/// Name = "a-volume",
/// MountPath = "/secrets",
/// },
/// },
/// },
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// secret_version_data,
/// },
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
/// {
/// SecretId = secret.Id,
/// Role = "roles/secretmanager.secretAccessor",
/// Member = $"serviceAccount:{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// secret,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// SecretId: pulumi.String("secret-1"),
/// Replication: &secretmanager.SecretReplicationArgs{
/// Auto: &secretmanager.SecretReplicationAutoArgs{},
/// },
/// })
/// if err != nil {
/// return err
/// }
/// secret_version_data, err := secretmanager.NewSecretVersion(ctx, "secret-version-data", &secretmanager.SecretVersionArgs{
/// Secret:     secret.Name,
/// SecretData: pulumi.String("secret-data"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Volumes: cloudrunv2.ServiceTemplateVolumeArray{
/// &cloudrunv2.ServiceTemplateVolumeArgs{
/// Name: pulumi.String("a-volume"),
/// Secret: &cloudrunv2.ServiceTemplateVolumeSecretArgs{
/// Secret:      secret.SecretId,
/// DefaultMode: pulumi.Int(292),
/// Items: cloudrunv2.ServiceTemplateVolumeSecretItemArray{
/// &cloudrunv2.ServiceTemplateVolumeSecretItemArgs{
/// Version: pulumi.String("1"),
/// Path:    pulumi.String("my-secret"),
/// },
/// },
/// },
/// },
/// },
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// VolumeMounts: cloudrunv2.ServiceTemplateContainerVolumeMountArray{
/// &cloudrunv2.ServiceTemplateContainerVolumeMountArgs{
/// Name:      pulumi.String("a-volume"),
/// MountPath: pulumi.String("/secrets"),
/// },
/// },
/// },
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// secret_version_data,
/// }))
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// SecretId: secret.ID(),
/// Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// Member:   pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", project.Number),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// secret,
/// }))
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var secret = new Secret("secret", SecretArgs.builder()
/// .secretId("secret-1")
/// .replication(SecretReplicationArgs.builder()
/// .auto(SecretReplicationAutoArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// var secret_version_data = new SecretVersion("secret-version-data", SecretVersionArgs.builder()
/// .secret(secret.name())
/// .secretData("secret-data")
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .template(ServiceTemplateArgs.builder()
/// .volumes(ServiceTemplateVolumeArgs.builder()
/// .name("a-volume")
/// .secret(ServiceTemplateVolumeSecretArgs.builder()
/// .secret(secret.secretId())
/// .defaultMode(292)
/// .items(ServiceTemplateVolumeSecretItemArgs.builder()
/// .version("1")
/// .path("my-secret")
/// .build())
/// .build())
/// .build())
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .volumeMounts(ServiceTemplateContainerVolumeMountArgs.builder()
/// .name("a-volume")
/// .mountPath("/secrets")
/// .build())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(secret_version_data)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
/// .secretId(secret.id())
/// .role("roles/secretmanager.secretAccessor")
/// .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", project.number()))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(secret)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// template:
/// volumes:
/// - name: a-volume
/// secret:
/// secret: ${secret.secretId}
/// defaultMode: 292
/// items:
/// - version: '1'
/// path: my-secret
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// volumeMounts:
/// - name: a-volume
/// mountPath: /secrets
/// options:
/// dependsOn:
/// - ${["secret-version-data"]}
/// secret:
/// type: gcp:secretmanager:Secret
/// properties:
/// secretId: secret-1
/// replication:
/// auto: {}
/// secret-version-data:
/// type: gcp:secretmanager:SecretVersion
/// properties:
/// secret: ${secret.name}
/// secretData: secret-data
/// secret-access:
/// type: gcp:secretmanager:SecretIamMember
/// properties:
/// secretId: ${secret.id}
/// role: roles/secretmanager.secretAccessor
/// member: serviceAccount:${project.number}-compute@developer.gserviceaccount.com
/// options:
/// dependsOn:
/// - ${secret}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Multicontainer
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// template: {
/// containers: [
/// {
/// name: "hello-1",
/// ports: {
/// containerPort: 8080,
/// },
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// dependsOns: ["hello-2"],
/// volumeMounts: [{
/// name: "empty-dir-volume",
/// mountPath: "/mnt",
/// }],
/// },
/// {
/// name: "hello-2",
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// envs: [{
/// name: "PORT",
/// value: "8081",
/// }],
/// startupProbe: {
/// httpGet: {
/// port: 8081,
/// },
/// },
/// },
/// ],
/// volumes: [{
/// name: "empty-dir-volume",
/// emptyDir: {
/// medium: "MEMORY",
/// sizeLimit: "256Mi",
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// template={
/// "containers": [
/// {
/// "name": "hello-1",
/// "ports": {
/// "container_port": 8080,
/// },
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "depends_ons": ["hello-2"],
/// "volume_mounts": [{
/// "name": "empty-dir-volume",
/// "mount_path": "/mnt",
/// }],
/// },
/// {
/// "name": "hello-2",
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "envs": [{
/// "name": "PORT",
/// "value": "8081",
/// }],
/// "startup_probe": {
/// "http_get": {
/// "port": 8081,
/// },
/// },
/// },
/// ],
/// "volumes": [{
/// "name": "empty-dir-volume",
/// "empty_dir": {
/// "medium": "MEMORY",
/// "size_limit": "256Mi",
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Name = "hello-1",
/// Ports = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerPortsArgs
/// {
/// ContainerPort = 8080,
/// },
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// DependsOns = new[]
/// {
/// "hello-2",
/// },
/// VolumeMounts = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerVolumeMountArgs
/// {
/// Name = "empty-dir-volume",
/// MountPath = "/mnt",
/// },
/// },
/// },
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Name = "hello-2",
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// Envs = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerEnvArgs
/// {
/// Name = "PORT",
/// Value = "8081",
/// },
/// },
/// StartupProbe = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerStartupProbeArgs
/// {
/// HttpGet = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerStartupProbeHttpGetArgs
/// {
/// Port = 8081,
/// },
/// },
/// },
/// },
/// Volumes = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeArgs
/// {
/// Name = "empty-dir-volume",
/// EmptyDir = new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeEmptyDirArgs
/// {
/// Medium = "MEMORY",
/// SizeLimit = "256Mi",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Name: pulumi.String("hello-1"),
/// Ports: &cloudrunv2.ServiceTemplateContainerPortsArgs{
/// ContainerPort: pulumi.Int(8080),
/// },
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// DependsOns: pulumi.StringArray{
/// pulumi.String("hello-2"),
/// },
/// VolumeMounts: cloudrunv2.ServiceTemplateContainerVolumeMountArray{
/// &cloudrunv2.ServiceTemplateContainerVolumeMountArgs{
/// Name:      pulumi.String("empty-dir-volume"),
/// MountPath: pulumi.String("/mnt"),
/// },
/// },
/// },
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Name:  pulumi.String("hello-2"),
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// Envs: cloudrunv2.ServiceTemplateContainerEnvArray{
/// &cloudrunv2.ServiceTemplateContainerEnvArgs{
/// Name:  pulumi.String("PORT"),
/// Value: pulumi.String("8081"),
/// },
/// },
/// StartupProbe: &cloudrunv2.ServiceTemplateContainerStartupProbeArgs{
/// HttpGet: &cloudrunv2.ServiceTemplateContainerStartupProbeHttpGetArgs{
/// Port: pulumi.Int(8081),
/// },
/// },
/// },
/// },
/// Volumes: cloudrunv2.ServiceTemplateVolumeArray{
/// &cloudrunv2.ServiceTemplateVolumeArgs{
/// Name: pulumi.String("empty-dir-volume"),
/// EmptyDir: &cloudrunv2.ServiceTemplateVolumeEmptyDirArgs{
/// Medium:    pulumi.String("MEMORY"),
/// SizeLimit: pulumi.String("256Mi"),
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .template(ServiceTemplateArgs.builder()
/// .containers(
/// ServiceTemplateContainerArgs.builder()
/// .name("hello-1")
/// .ports(ServiceTemplateContainerPortsArgs.builder()
/// .containerPort(8080)
/// .build())
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .dependsOns("hello-2")
/// .volumeMounts(ServiceTemplateContainerVolumeMountArgs.builder()
/// .name("empty-dir-volume")
/// .mountPath("/mnt")
/// .build())
/// .build(),
/// ServiceTemplateContainerArgs.builder()
/// .name("hello-2")
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .envs(ServiceTemplateContainerEnvArgs.builder()
/// .name("PORT")
/// .value("8081")
/// .build())
/// .startupProbe(ServiceTemplateContainerStartupProbeArgs.builder()
/// .httpGet(ServiceTemplateContainerStartupProbeHttpGetArgs.builder()
/// .port(8081)
/// .build())
/// .build())
/// .build())
/// .volumes(ServiceTemplateVolumeArgs.builder()
/// .name("empty-dir-volume")
/// .emptyDir(ServiceTemplateVolumeEmptyDirArgs.builder()
/// .medium("MEMORY")
/// .sizeLimit("256Mi")
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
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// template:
/// containers:
/// - name: hello-1
/// ports:
/// containerPort: 8080
/// image: us-docker.pkg.dev/cloudrun/container/hello
/// dependsOns:
/// - hello-2
/// volumeMounts:
/// - name: empty-dir-volume
/// mountPath: /mnt
/// - name: hello-2
/// image: us-docker.pkg.dev/cloudrun/container/hello
/// envs:
/// - name: PORT
/// value: '8081'
/// startupProbe:
/// httpGet:
/// port: 8081
/// volumes:
/// - name: empty-dir-volume
/// emptyDir:
/// medium: MEMORY
/// sizeLimit: 256Mi
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Mount Gcs
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultBucket = new gcp.storage.Bucket("default", {
/// name: "cloudrun-service",
/// location: "US",
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// template: {
/// executionEnvironment: "EXECUTION_ENVIRONMENT_GEN2",
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// volumeMounts: [{
/// name: "bucket",
/// mountPath: "/var/www",
/// }],
/// }],
/// volumes: [{
/// name: "bucket",
/// gcs: {
/// bucket: defaultBucket.name,
/// readOnly: false,
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_bucket = gcp.storage.Bucket("default",
/// name="cloudrun-service",
/// location="US")
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// template={
/// "execution_environment": "EXECUTION_ENVIRONMENT_GEN2",
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// "volume_mounts": [{
/// "name": "bucket",
/// "mount_path": "/var/www",
/// }],
/// }],
/// "volumes": [{
/// "name": "bucket",
/// "gcs": {
/// "bucket": default_bucket.name,
/// "read_only": False,
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultBucket = new Gcp.Storage.Bucket("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "US",
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// ExecutionEnvironment = "EXECUTION_ENVIRONMENT_GEN2",
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// VolumeMounts = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerVolumeMountArgs
/// {
/// Name = "bucket",
/// MountPath = "/var/www",
/// },
/// },
/// },
/// },
/// Volumes = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeArgs
/// {
/// Name = "bucket",
/// Gcs = new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeGcsArgs
/// {
/// Bucket = defaultBucket.Name,
/// ReadOnly = false,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultBucket, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// Name:     pulumi.String("cloudrun-service"),
/// Location: pulumi.String("US"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// ExecutionEnvironment: pulumi.String("EXECUTION_ENVIRONMENT_GEN2"),
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// VolumeMounts: cloudrunv2.ServiceTemplateContainerVolumeMountArray{
/// &cloudrunv2.ServiceTemplateContainerVolumeMountArgs{
/// Name:      pulumi.String("bucket"),
/// MountPath: pulumi.String("/var/www"),
/// },
/// },
/// },
/// },
/// Volumes: cloudrunv2.ServiceTemplateVolumeArray{
/// &cloudrunv2.ServiceTemplateVolumeArgs{
/// Name: pulumi.String("bucket"),
/// Gcs: &cloudrunv2.ServiceTemplateVolumeGcsArgs{
/// Bucket:   defaultBucket.Name,
/// ReadOnly: pulumi.Bool(false),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
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
/// var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
/// .name("cloudrun-service")
/// .location("US")
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .template(ServiceTemplateArgs.builder()
/// .executionEnvironment("EXECUTION_ENVIRONMENT_GEN2")
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .volumeMounts(ServiceTemplateContainerVolumeMountArgs.builder()
/// .name("bucket")
/// .mountPath("/var/www")
/// .build())
/// .build())
/// .volumes(ServiceTemplateVolumeArgs.builder()
/// .name("bucket")
/// .gcs(ServiceTemplateVolumeGcsArgs.builder()
/// .bucket(defaultBucket.name())
/// .readOnly(false)
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
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// template:
/// executionEnvironment: EXECUTION_ENVIRONMENT_GEN2
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// volumeMounts:
/// - name: bucket
/// mountPath: /var/www
/// volumes:
/// - name: bucket
/// gcs:
/// bucket: ${defaultBucket.name}
/// readOnly: false
/// defaultBucket:
/// type: gcp:storage:Bucket
/// name: default
/// properties:
/// name: cloudrun-service
/// location: US
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Mount Nfs
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultInstance = new gcp.filestore.Instance("default", {
/// name: "cloudrun-service",
/// location: "us-central1-b",
/// tier: "BASIC_HDD",
/// fileShares: {
/// capacityGb: 1024,
/// name: "share1",
/// },
/// networks: [{
/// network: "default",
/// modes: ["MODE_IPV4"],
/// }],
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// template: {
/// executionEnvironment: "EXECUTION_ENVIRONMENT_GEN2",
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello:latest",
/// volumeMounts: [{
/// name: "nfs",
/// mountPath: "/mnt/nfs/filestore",
/// }],
/// }],
/// vpcAccess: {
/// networkInterfaces: [{
/// network: "default",
/// subnetwork: "default",
/// }],
/// },
/// volumes: [{
/// name: "nfs",
/// nfs: {
/// server: defaultInstance.networks.apply(networks => networks[0].ipAddresses?.[0]),
/// path: "/share1",
/// readOnly: false,
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_instance = gcp.filestore.Instance("default",
/// name="cloudrun-service",
/// location="us-central1-b",
/// tier="BASIC_HDD",
/// file_shares={
/// "capacity_gb": 1024,
/// "name": "share1",
/// },
/// networks=[{
/// "network": "default",
/// "modes": ["MODE_IPV4"],
/// }])
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// template={
/// "execution_environment": "EXECUTION_ENVIRONMENT_GEN2",
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello:latest",
/// "volume_mounts": [{
/// "name": "nfs",
/// "mount_path": "/mnt/nfs/filestore",
/// }],
/// }],
/// "vpc_access": {
/// "network_interfaces": [{
/// "network": "default",
/// "subnetwork": "default",
/// }],
/// },
/// "volumes": [{
/// "name": "nfs",
/// "nfs": {
/// "server": default_instance.networks[0].ip_addresses[0],
/// "path": "/share1",
/// "read_only": False,
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultInstance = new Gcp.Filestore.Instance("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1-b",
/// Tier = "BASIC_HDD",
/// FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
/// {
/// CapacityGb = 1024,
/// Name = "share1",
/// },
/// Networks = new[]
/// {
/// new Gcp.Filestore.Inputs.InstanceNetworkArgs
/// {
/// Network = "default",
/// Modes = new[]
/// {
/// "MODE_IPV4",
/// },
/// },
/// },
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// ExecutionEnvironment = "EXECUTION_ENVIRONMENT_GEN2",
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello:latest",
/// VolumeMounts = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerVolumeMountArgs
/// {
/// Name = "nfs",
/// MountPath = "/mnt/nfs/filestore",
/// },
/// },
/// },
/// },
/// VpcAccess = new Gcp.CloudRunV2.Inputs.ServiceTemplateVpcAccessArgs
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVpcAccessNetworkInterfaceArgs
/// {
/// Network = "default",
/// Subnetwork = "default",
/// },
/// },
/// },
/// Volumes = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeArgs
/// {
/// Name = "nfs",
/// Nfs = new Gcp.CloudRunV2.Inputs.ServiceTemplateVolumeNfsArgs
/// {
/// Server = defaultInstance.Networks.Apply(networks => networks[0].IpAddresses[0]),
/// Path = "/share1",
/// ReadOnly = false,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultInstance, err := filestore.NewInstance(ctx, "default", &filestore.InstanceArgs{
/// Name:     pulumi.String("cloudrun-service"),
/// Location: pulumi.String("us-central1-b"),
/// Tier:     pulumi.String("BASIC_HDD"),
/// FileShares: &filestore.InstanceFileSharesArgs{
/// CapacityGb: pulumi.Int(1024),
/// Name:       pulumi.String("share1"),
/// },
/// Networks: filestore.InstanceNetworkArray{
/// &filestore.InstanceNetworkArgs{
/// Network: pulumi.String("default"),
/// Modes: pulumi.StringArray{
/// pulumi.String("MODE_IPV4"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// ExecutionEnvironment: pulumi.String("EXECUTION_ENVIRONMENT_GEN2"),
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello:latest"),
/// VolumeMounts: cloudrunv2.ServiceTemplateContainerVolumeMountArray{
/// &cloudrunv2.ServiceTemplateContainerVolumeMountArgs{
/// Name:      pulumi.String("nfs"),
/// MountPath: pulumi.String("/mnt/nfs/filestore"),
/// },
/// },
/// },
/// },
/// VpcAccess: &cloudrunv2.ServiceTemplateVpcAccessArgs{
/// NetworkInterfaces: cloudrunv2.ServiceTemplateVpcAccessNetworkInterfaceArray{
/// &cloudrunv2.ServiceTemplateVpcAccessNetworkInterfaceArgs{
/// Network:    pulumi.String("default"),
/// Subnetwork: pulumi.String("default"),
/// },
/// },
/// },
/// Volumes: cloudrunv2.ServiceTemplateVolumeArray{
/// &cloudrunv2.ServiceTemplateVolumeArgs{
/// Name: pulumi.String("nfs"),
/// Nfs: &cloudrunv2.ServiceTemplateVolumeNfsArgs{
/// Server: defaultInstance.Networks.ApplyT(func(networks []filestore.InstanceNetwork) (*string, error) {
/// return &networks[0].IpAddresses[0], nil
/// }).(pulumi.StringPtrOutput),
/// Path:     pulumi.String("/share1"),
/// ReadOnly: pulumi.Bool(false),
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
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateVpcAccessArgs;
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
/// var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1-b")
/// .tier("BASIC_HDD")
/// .fileShares(InstanceFileSharesArgs.builder()
/// .capacityGb(1024)
/// .name("share1")
/// .build())
/// .networks(InstanceNetworkArgs.builder()
/// .network("default")
/// .modes("MODE_IPV4")
/// .build())
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .template(ServiceTemplateArgs.builder()
/// .executionEnvironment("EXECUTION_ENVIRONMENT_GEN2")
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello:latest")
/// .volumeMounts(ServiceTemplateContainerVolumeMountArgs.builder()
/// .name("nfs")
/// .mountPath("/mnt/nfs/filestore")
/// .build())
/// .build())
/// .vpcAccess(ServiceTemplateVpcAccessArgs.builder()
/// .networkInterfaces(ServiceTemplateVpcAccessNetworkInterfaceArgs.builder()
/// .network("default")
/// .subnetwork("default")
/// .build())
/// .build())
/// .volumes(ServiceTemplateVolumeArgs.builder()
/// .name("nfs")
/// .nfs(ServiceTemplateVolumeNfsArgs.builder()
/// .server(defaultInstance.networks().applyValue(_networks -> _networks[0].ipAddresses()[0]))
/// .path("/share1")
/// .readOnly(false)
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
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// template:
/// executionEnvironment: EXECUTION_ENVIRONMENT_GEN2
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello:latest
/// volumeMounts:
/// - name: nfs
/// mountPath: /mnt/nfs/filestore
/// vpcAccess:
/// networkInterfaces:
/// - network: default
/// subnetwork: default
/// volumes:
/// - name: nfs
/// nfs:
/// server: ${defaultInstance.networks[0].ipAddresses[0]}
/// path: /share1
/// readOnly: false
/// defaultInstance:
/// type: gcp:filestore:Instance
/// name: default
/// properties:
/// name: cloudrun-service
/// location: us-central1-b
/// tier: BASIC_HDD
/// fileShares:
/// capacityGb: 1024
/// name: share1
/// networks:
/// - network: default
/// modes:
/// - MODE_IPV4
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Mesh
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const mesh = new gcp.networkservices.Mesh("mesh", {name: "network-services-mesh"});
/// const waitForMesh = new time.Sleep("wait_for_mesh", {createDuration: "1m"}, {
/// dependsOn: [mesh],
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// deletionProtection: false,
/// location: "us-central1",
/// launchStage: "BETA",
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// serviceMesh: {
/// mesh: mesh.id,
/// },
/// },
/// }, {
/// dependsOn: [waitForMesh],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// mesh = gcp.networkservices.Mesh("mesh", name="network-services-mesh")
/// wait_for_mesh = time.Sleep("wait_for_mesh", create_duration="1m",
/// opts = pulumi.ResourceOptions(depends_on=[mesh]))
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// deletion_protection=False,
/// location="us-central1",
/// launch_stage="BETA",
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// "service_mesh": {
/// "mesh": mesh.id,
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[wait_for_mesh]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mesh = new Gcp.NetworkServices.Mesh("mesh", new()
/// {
/// Name = "network-services-mesh",
/// });
///
/// var waitForMesh = new Time.Sleep("wait_for_mesh", new()
/// {
/// CreateDuration = "1m",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// mesh,
/// },
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// DeletionProtection = false,
/// Location = "us-central1",
/// LaunchStage = "BETA",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
/// },
/// },
/// ServiceMesh = new Gcp.CloudRunV2.Inputs.ServiceTemplateServiceMeshArgs
/// {
/// Mesh = mesh.Id,
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// waitForMesh,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mesh, err := networkservices.NewMesh(ctx, "mesh", &networkservices.MeshArgs{
/// Name: pulumi.String("network-services-mesh"),
/// })
/// if err != nil {
/// return err
/// }
/// waitForMesh, err := time.NewSleep(ctx, "wait_for_mesh", &time.SleepArgs{
/// CreateDuration: pulumi.String("1m"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// mesh,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// DeletionProtection: pulumi.Bool(false),
/// Location:           pulumi.String("us-central1"),
/// LaunchStage:        pulumi.String("BETA"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// },
/// },
/// ServiceMesh: &cloudrunv2.ServiceTemplateServiceMeshArgs{
/// Mesh: mesh.ID(),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// waitForMesh,
/// }))
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
/// import com.pulumi.gcp.networkservices.Mesh;
/// import com.pulumi.gcp.networkservices.MeshArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateServiceMeshArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var mesh = new Mesh("mesh", MeshArgs.builder()
/// .name("network-services-mesh")
/// .build());
///
/// var waitForMesh = new Sleep("waitForMesh", SleepArgs.builder()
/// .createDuration("1m")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(mesh)
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .deletionProtection(false)
/// .location("us-central1")
/// .launchStage("BETA")
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .build())
/// .serviceMesh(ServiceTemplateServiceMeshArgs.builder()
/// .mesh(mesh.id())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(waitForMesh)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// deletionProtection: false
/// location: us-central1
/// launchStage: BETA
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// serviceMesh:
/// mesh: ${mesh.id}
/// options:
/// dependsOn:
/// - ${waitForMesh}
/// waitForMesh:
/// type: time:Sleep
/// name: wait_for_mesh
/// properties:
/// createDuration: 1m
/// options:
/// dependsOn:
/// - ${mesh}
/// mesh:
/// type: gcp:networkservices:Mesh
/// properties:
/// name: network-services-mesh
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Invokeriam
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-service",
/// location: "us-central1",
/// deletionProtection: false,
/// invokerIamDisabled: true,
/// description: "The serving URL of this service will not perform any IAM check when invoked",
/// ingress: "INGRESS_TRAFFIC_ALL",
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-service",
/// location="us-central1",
/// deletion_protection=False,
/// invoker_iam_disabled=True,
/// description="The serving URL of this service will not perform any IAM check when invoked",
/// ingress="INGRESS_TRAFFIC_ALL",
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// InvokerIamDisabled = true,
/// Description = "The serving URL of this service will not perform any IAM check when invoked",
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// InvokerIamDisabled: pulumi.Bool(true),
/// Description:        pulumi.String("The serving URL of this service will not perform any IAM check when invoked"),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .invokerIamDisabled(true)
/// .description("The serving URL of this service will not perform any IAM check when invoked")
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-service
/// location: us-central1
/// deletionProtection: false
/// invokerIamDisabled: true
/// description: The serving URL of this service will not perform any IAM check when invoked
/// ingress: INGRESS_TRAFFIC_ALL
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Iap
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-iap-service",
/// location: "us-central1",
/// deletionProtection: false,
/// ingress: "INGRESS_TRAFFIC_ALL",
/// launchStage: "BETA",
/// iapEnabled: true,
/// template: {
/// containers: [{
/// image: "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-iap-service",
/// location="us-central1",
/// deletion_protection=False,
/// ingress="INGRESS_TRAFFIC_ALL",
/// launch_stage="BETA",
/// iap_enabled=True,
/// template={
/// "containers": [{
/// "image": "us-docker.pkg.dev/cloudrun/container/hello",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-iap-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Ingress = "INGRESS_TRAFFIC_ALL",
/// LaunchStage = "BETA",
/// IapEnabled = true,
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "us-docker.pkg.dev/cloudrun/container/hello",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-iap-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// LaunchStage:        pulumi.String("BETA"),
/// IapEnabled:         pulumi.Bool(true),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
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
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
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
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-iap-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .ingress("INGRESS_TRAFFIC_ALL")
/// .launchStage("BETA")
/// .iapEnabled(true)
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("us-docker.pkg.dev/cloudrun/container/hello")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-iap-service
/// location: us-central1
/// deletionProtection: false
/// ingress: INGRESS_TRAFFIC_ALL
/// launchStage: BETA
/// iapEnabled: true
/// template:
/// containers:
/// - image: us-docker.pkg.dev/cloudrun/container/hello
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Cloudrunv2 Service Zip Deploy
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const sourcebucket = new gcp.storage.Bucket("sourcebucket", {
/// name: project.then(project => `${project.projectId}-tf-test-gcf-source_21197`),
/// location: "US",
/// uniformBucketLevelAccess: true,
/// });
/// const sourceTar = new gcp.storage.BucketObject("source_tar", {
/// name: "function-source.zip",
/// bucket: sourcebucket.name,
/// source: new pulumi.asset.FileAsset("./test-fixtures/cr-zip-nodejs-hello.tar.gz"),
/// });
/// const _default = new gcp.cloudrunv2.Service("default", {
/// name: "cloudrun-zip-service",
/// location: "us-central1",
/// deletionProtection: false,
/// template: {
/// containers: [{
/// image: "scratch",
/// baseImageUri: "us-central1-docker.pkg.dev/serverless-runtimes/google-24-full/runtimes/nodejs24",
/// commands: ["node"],
/// args: ["index.js"],
/// sourceCode: {
/// cloudStorageSource: {
/// bucket: sourcebucket.name,
/// object: sourceTar.name,
/// generation: sourceTar.generation,
/// },
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// sourcebucket = gcp.storage.Bucket("sourcebucket",
/// name=f"{project.project_id}-tf-test-gcf-source_21197",
/// location="US",
/// uniform_bucket_level_access=True)
/// source_tar = gcp.storage.BucketObject("source_tar",
/// name="function-source.zip",
/// bucket=sourcebucket.name,
/// source=pulumi.FileAsset("./test-fixtures/cr-zip-nodejs-hello.tar.gz"))
/// default = gcp.cloudrunv2.Service("default",
/// name="cloudrun-zip-service",
/// location="us-central1",
/// deletion_protection=False,
/// template={
/// "containers": [{
/// "image": "scratch",
/// "base_image_uri": "us-central1-docker.pkg.dev/serverless-runtimes/google-24-full/runtimes/nodejs24",
/// "commands": ["node"],
/// "args": ["index.js"],
/// "source_code": {
/// "cloud_storage_source": {
/// "bucket": sourcebucket.name,
/// "object": source_tar.name,
/// "generation": source_tar.generation,
/// },
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var sourcebucket = new Gcp.Storage.Bucket("sourcebucket", new()
/// {
/// Name = $"{project.Apply(getProjectResult => getProjectResult.ProjectId)}-tf-test-gcf-source_21197",
/// Location = "US",
/// UniformBucketLevelAccess = true,
/// });
///
/// var sourceTar = new Gcp.Storage.BucketObject("source_tar", new()
/// {
/// Name = "function-source.zip",
/// Bucket = sourcebucket.Name,
/// Source = new FileAsset("./test-fixtures/cr-zip-nodejs-hello.tar.gz"),
/// });
///
/// var @default = new Gcp.CloudRunV2.Service("default", new()
/// {
/// Name = "cloudrun-zip-service",
/// Location = "us-central1",
/// DeletionProtection = false,
/// Template = new Gcp.CloudRunV2.Inputs.ServiceTemplateArgs
/// {
/// Containers = new[]
/// {
/// new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerArgs
/// {
/// Image = "scratch",
/// BaseImageUri = "us-central1-docker.pkg.dev/serverless-runtimes/google-24-full/runtimes/nodejs24",
/// Commands = new[]
/// {
/// "node",
/// },
/// Args = new[]
/// {
/// "index.js",
/// },
/// SourceCode = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerSourceCodeArgs
/// {
/// CloudStorageSource = new Gcp.CloudRunV2.Inputs.ServiceTemplateContainerSourceCodeCloudStorageSourceArgs
/// {
/// Bucket = sourcebucket.Name,
/// Object = sourceTar.Name,
/// Generation = sourceTar.Generation,
/// },
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// sourcebucket, err := storage.NewBucket(ctx, "sourcebucket", &storage.BucketArgs{
/// Name:                     pulumi.Sprintf("%v-tf-test-gcf-source_21197", project.ProjectId),
/// Location:                 pulumi.String("US"),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// sourceTar, err := storage.NewBucketObject(ctx, "source_tar", &storage.BucketObjectArgs{
/// Name:   pulumi.String("function-source.zip"),
/// Bucket: sourcebucket.Name,
/// Source: pulumi.NewFileAsset("./test-fixtures/cr-zip-nodejs-hello.tar.gz"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudrunv2.NewService(ctx, "default", &cloudrunv2.ServiceArgs{
/// Name:               pulumi.String("cloudrun-zip-service"),
/// Location:           pulumi.String("us-central1"),
/// DeletionProtection: pulumi.Bool(false),
/// Template: &cloudrunv2.ServiceTemplateArgs{
/// Containers: cloudrunv2.ServiceTemplateContainerArray{
/// &cloudrunv2.ServiceTemplateContainerArgs{
/// Image:        pulumi.String("scratch"),
/// BaseImageUri: pulumi.String("us-central1-docker.pkg.dev/serverless-runtimes/google-24-full/runtimes/nodejs24"),
/// Commands: pulumi.StringArray{
/// pulumi.String("node"),
/// },
/// Args: pulumi.StringArray{
/// pulumi.String("index.js"),
/// },
/// SourceCode: &cloudrunv2.ServiceTemplateContainerSourceCodeArgs{
/// CloudStorageSource: &cloudrunv2.ServiceTemplateContainerSourceCodeCloudStorageSourceArgs{
/// Bucket:     sourcebucket.Name,
/// Object:     sourceTar.Name,
/// Generation: sourceTar.Generation,
/// },
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudrunv2.Service;
/// import com.pulumi.gcp.cloudrunv2.ServiceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.ServiceTemplateArgs;
/// import com.pulumi.asset.FileAsset;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var sourcebucket = new Bucket("sourcebucket", BucketArgs.builder()
/// .name(String.format("%s-tf-test-gcf-source_21197", project.projectId()))
/// .location("US")
/// .uniformBucketLevelAccess(true)
/// .build());
///
/// var sourceTar = new BucketObject("sourceTar", BucketObjectArgs.builder()
/// .name("function-source.zip")
/// .bucket(sourcebucket.name())
/// .source(new FileAsset("./test-fixtures/cr-zip-nodejs-hello.tar.gz"))
/// .build());
///
/// var default_ = new Service("default", ServiceArgs.builder()
/// .name("cloudrun-zip-service")
/// .location("us-central1")
/// .deletionProtection(false)
/// .template(ServiceTemplateArgs.builder()
/// .containers(ServiceTemplateContainerArgs.builder()
/// .image("scratch")
/// .baseImageUri("us-central1-docker.pkg.dev/serverless-runtimes/google-24-full/runtimes/nodejs24")
/// .commands("node")
/// .args("index.js")
/// .sourceCode(ServiceTemplateContainerSourceCodeArgs.builder()
/// .cloudStorageSource(ServiceTemplateContainerSourceCodeCloudStorageSourceArgs.builder()
/// .bucket(sourcebucket.name())
/// .object(sourceTar.name())
/// .generation(sourceTar.generation())
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
/// sourcebucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: ${project.projectId}-tf-test-gcf-source_21197
/// location: US
/// uniformBucketLevelAccess: true
/// sourceTar:
/// type: gcp:storage:BucketObject
/// name: source_tar
/// properties:
/// name: function-source.zip
/// bucket: ${sourcebucket.name}
/// source:
/// fn::FileAsset: ./test-fixtures/cr-zip-nodejs-hello.tar.gz
/// default:
/// type: gcp:cloudrunv2:Service
/// properties:
/// name: cloudrun-zip-service
/// location: us-central1
/// deletionProtection: false
/// template:
/// containers:
/// - image: scratch
/// baseImageUri: us-central1-docker.pkg.dev/serverless-runtimes/google-24-full/runtimes/nodejs24
/// commands:
/// - node
/// args:
/// - index.js
/// sourceCode:
/// cloudStorageSource:
/// bucket: ${sourcebucket.name}
/// object: ${sourceTar.name}
/// generation: ${sourceTar.generation}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/services/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/service:Service default projects/{{project}}/locations/{{location}}/services/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/service:Service default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/service:Service default {{location}}/{{name}}
/// ```
class Service3 extends CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// All system annotations in v1 now have a corresponding field in v2 Service.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Settings for the Binary Authorization feature.
  /// Structure is documented below.
  late final Output<ServiceBinaryAuthorization?> binaryAuthorization;

  /// Configuration for building a Cloud Run function.
  /// Structure is documented below.
  late final Output<ServiceBuildConfig?> buildConfig;

  /// Arbitrary identifier for the API client.
  late final Output<String?> client;

  /// Arbitrary version identifier for the API client.
  late final Output<String?> clientVersion;

  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Service does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final Output<List<ServiceCondition>> conditions;

  /// The creation time.
  late final Output<String> createTime;

  /// Email address of the authenticated creator.
  late final Output<String> creator;

  /// One or more custom audiences that you want this service to support. Specify each custom audience as the full URL in a string. The custom audiences are encoded in the token and used to authenticate requests.
  /// For more information, see https://cloud.google.com/run/docs/configuring/custom-audiences.
  late final Output<List<String>?> customAudiences;

  /// Disables public resolution of the default URI of this service.
  late final Output<bool?> defaultUriDisabled;

  /// The deletion time.
  late final Output<String> deleteTime;
  late final Output<bool?> deletionProtection;

  /// User-provided description of the Service. This field currently has a 512-character limit.
  late final Output<String?> description;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final Output<String> etag;

  /// For a deleted resource, the time after which it will be permanently deleted.
  late final Output<String> expireTime;

  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final Output<String> generation;

  /// Used to enable/disable IAP for the service.
  late final Output<bool?> iapEnabled;

  /// Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible values are: `INGRESS_TRAFFIC_ALL`, `INGRESS_TRAFFIC_INTERNAL_ONLY`, `INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER`.
  late final Output<String> ingress;

  /// Disables IAM permission check for run.routes.invoke for callers of this service. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  late final Output<bool?> invokerIamDisabled;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with  `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 Service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Email address of the last authenticated modifier.
  late final Output<String> lastModifier;

  /// Name of the last created revision. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final Output<String> latestCreatedRevision;

  /// Name of the latest revision that is serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  late final Output<String> latestReadyRevision;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA.
  /// If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final Output<String> launchStage;

  /// The location of the cloud run service
  late final Output<String> location;

  /// Settings for creating a Multi-Region Service. Make sure to use region = 'global' when using them. For more information, visit https://cloud.google.com/run/docs/multiple-regions#deploy
  /// Structure is documented below.
  late final Output<ServiceMultiRegionSettings?> multiRegionSettings;

  /// Name of the Service.
  late final Output<String> name;

  /// The generation of this Service currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final Output<String> observedGeneration;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Returns true if the Service is currently being acted upon by the system to bring it into the desired state.
  /// When a new Service is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Service to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration, latest_ready_revison, trafficStatuses, and uri will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Service, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  /// If reconciliation succeeded, the following fields will match: traffic and trafficStatuses, observedGeneration and generation, latestReadyRevision and latestCreatedRevision.
  /// If reconciliation failed, trafficStatuses, observedGeneration, and latestReadyRevision will have the state of the last serving revision, or empty for newly created Services. Additional information on the failure can be found in terminalCondition and conditions.
  late final Output<bool> reconciling;

  /// Scaling settings that apply to the whole service
  /// Structure is documented below.
  late final Output<ServiceScaling> scaling;

  /// The template used to create revisions for this Service.
  /// Structure is documented below.
  late final Output<ServiceTemplate2> template;

  /// The Condition of this Service, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final Output<List<ServiceTerminalCondition>> terminalConditions;

  /// Detailed status information for corresponding traffic targets. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final Output<List<ServiceTrafficStatus>> trafficStatuses;

  /// Specifies how to distribute traffic over a collection of Revisions belonging to the Service. If traffic is empty or not provided, defaults to 100% traffic to the latest Ready Revision.
  /// Structure is documented below.
  late final Output<List<ServiceTraffic2>> traffics;

  /// Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final Output<String> uid;

  /// The last-modified time.
  late final Output<String> updateTime;

  /// (Output)
  /// Displays the target URI.
  late final Output<String> uri;

  /// All URLs serving traffic for this Service.
  late final Output<List<String>> urls;

  Service3(
    String name, {
    ServiceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.binaryAuthorization =
        registerOutput<ServiceBinaryAuthorization?>('binaryAuthorization');
    this.buildConfig = registerOutput<ServiceBuildConfig?>('buildConfig');
    this.client = registerOutput<String?>('client');
    this.clientVersion = registerOutput<String?>('clientVersion');
    this.conditions = registerOutput<List<ServiceCondition>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.customAudiences = registerOutput<List<String>?>('customAudiences');
    this.defaultUriDisabled = registerOutput<bool?>('defaultUriDisabled');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.generation = registerOutput<String>('generation');
    this.iapEnabled = registerOutput<bool?>('iapEnabled');
    this.ingress = registerOutput<String>('ingress');
    this.invokerIamDisabled = registerOutput<bool?>('invokerIamDisabled');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifier = registerOutput<String>('lastModifier');
    this.latestCreatedRevision =
        registerOutput<String>('latestCreatedRevision');
    this.latestReadyRevision = registerOutput<String>('latestReadyRevision');
    this.launchStage = registerOutput<String>('launchStage');
    this.location = registerOutput<String>('location');
    this.multiRegionSettings =
        registerOutput<ServiceMultiRegionSettings?>('multiRegionSettings');
    this.name = registerOutput<String>('name');
    this.observedGeneration = registerOutput<String>('observedGeneration');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.scaling = registerOutput<ServiceScaling>('scaling');
    this.template = registerOutput<ServiceTemplate2>('template');
    this.terminalConditions =
        registerOutput<List<ServiceTerminalCondition>>('terminalConditions');
    this.trafficStatuses =
        registerOutput<List<ServiceTrafficStatus>>('trafficStatuses');
    this.traffics = registerOutput<List<ServiceTraffic2>>('traffics');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.uri = registerOutput<String>('uri');
    this.urls = registerOutput<List<String>>('urls');
  }
}
