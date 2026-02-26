import 'package:pulumi/pulumi.dart';
import '../migration_job_dump_flags/migration_job_dump_flags.dart';
import '../migration_job_error/migration_job_error.dart';
import '../migration_job_performance_config/migration_job_performance_config.dart';
import '../migration_job_reverse_ssh_connectivity/migration_job_reverse_ssh_connectivity.dart';
import '../migration_job_vpc_peering_connectivity/migration_job_vpc_peering_connectivity.dart';
import 'migration_job_args.dart';

/// A migration job definition.
///
///
/// To get more information about MigrationJob, see:
///
/// * [API documentation](https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/create)
/// * How-to Guides
/// * [Database Migration](https://cloud.google.com/database-migration/docs/)
///
/// ## Example Usage
///
/// ### Database Migration Service Migration Job Mysql To Mysql
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const sourceCsql = new gcp.sql.DatabaseInstance("source_csql", {
/// name: "source-csql",
/// databaseVersion: "MYSQL_5_7",
/// settings: {
/// tier: "db-n1-standard-1",
/// deletionProtectionEnabled: false,
/// },
/// deletionProtection: false,
/// });
/// const sourceSqlClientCert = new gcp.sql.SslCert("source_sql_client_cert", {
/// commonName: "cert",
/// instance: sourceCsql.name,
/// }, {
/// dependsOn: [sourceCsql],
/// });
/// const sourceSqldbUser = new gcp.sql.User("source_sqldb_user", {
/// name: "username",
/// instance: sourceCsql.name,
/// password: "password",
/// }, {
/// dependsOn: [sourceSqlClientCert],
/// });
/// const sourceCp = new gcp.databasemigrationservice.ConnectionProfile("source_cp", {
/// location: "us-central1",
/// connectionProfileId: "source-cp",
/// displayName: "source-cp_display",
/// labels: {
/// foo: "bar",
/// },
/// mysql: {
/// host: sourceCsql.ipAddresses.apply(ipAddresses => ipAddresses[0].ipAddress),
/// port: 3306,
/// username: sourceSqldbUser.name,
/// password: sourceSqldbUser.password,
/// ssl: {
/// clientKey: sourceSqlClientCert.privateKey,
/// clientCertificate: sourceSqlClientCert.cert,
/// caCertificate: sourceSqlClientCert.serverCaCert,
/// type: "SERVER_CLIENT",
/// },
/// cloudSqlId: "source-csql",
/// },
/// }, {
/// dependsOn: [sourceSqldbUser],
/// });
/// const destinationCsql = new gcp.sql.DatabaseInstance("destination_csql", {
/// name: "destination-csql",
/// databaseVersion: "MYSQL_5_7",
/// settings: {
/// tier: "db-n1-standard-1",
/// deletionProtectionEnabled: false,
/// },
/// deletionProtection: false,
/// });
/// const destinationCp = new gcp.databasemigrationservice.ConnectionProfile("destination_cp", {
/// location: "us-central1",
/// connectionProfileId: "destination-cp",
/// displayName: "destination-cp_display",
/// labels: {
/// foo: "bar",
/// },
/// mysql: {
/// cloudSqlId: "destination-csql",
/// },
/// }, {
/// dependsOn: [destinationCsql],
/// });
/// const _default = new gcp.compute.Network("default", {name: "destination-csql"});
/// const mysqltomysql = new gcp.databasemigrationservice.MigrationJob("mysqltomysql", {
/// location: "us-central1",
/// migrationJobId: "my-migrationid",
/// displayName: "my-migrationid_display",
/// labels: {
/// foo: "bar",
/// },
/// performanceConfig: {
/// dumpParallelLevel: "MAX",
/// },
/// vpcPeeringConnectivity: {
/// vpc: _default.id,
/// },
/// dumpType: "LOGICAL",
/// dumpFlags: {
/// dumpFlags: [{
/// name: "max-allowed-packet",
/// value: "1073741824",
/// }],
/// },
/// source: sourceCp.name,
/// destination: destinationCp.name,
/// type: "CONTINUOUS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// source_csql = gcp.sql.DatabaseInstance("source_csql",
/// name="source-csql",
/// database_version="MYSQL_5_7",
/// settings={
/// "tier": "db-n1-standard-1",
/// "deletion_protection_enabled": False,
/// },
/// deletion_protection=False)
/// source_sql_client_cert = gcp.sql.SslCert("source_sql_client_cert",
/// common_name="cert",
/// instance=source_csql.name,
/// opts = pulumi.ResourceOptions(depends_on=[source_csql]))
/// source_sqldb_user = gcp.sql.User("source_sqldb_user",
/// name="username",
/// instance=source_csql.name,
/// password="password",
/// opts = pulumi.ResourceOptions(depends_on=[source_sql_client_cert]))
/// source_cp = gcp.databasemigrationservice.ConnectionProfile("source_cp",
/// location="us-central1",
/// connection_profile_id="source-cp",
/// display_name="source-cp_display",
/// labels={
/// "foo": "bar",
/// },
/// mysql={
/// "host": source_csql.ip_addresses[0].ip_address,
/// "port": 3306,
/// "username": source_sqldb_user.name,
/// "password": source_sqldb_user.password,
/// "ssl": {
/// "client_key": source_sql_client_cert.private_key,
/// "client_certificate": source_sql_client_cert.cert,
/// "ca_certificate": source_sql_client_cert.server_ca_cert,
/// "type": "SERVER_CLIENT",
/// },
/// "cloud_sql_id": "source-csql",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[source_sqldb_user]))
/// destination_csql = gcp.sql.DatabaseInstance("destination_csql",
/// name="destination-csql",
/// database_version="MYSQL_5_7",
/// settings={
/// "tier": "db-n1-standard-1",
/// "deletion_protection_enabled": False,
/// },
/// deletion_protection=False)
/// destination_cp = gcp.databasemigrationservice.ConnectionProfile("destination_cp",
/// location="us-central1",
/// connection_profile_id="destination-cp",
/// display_name="destination-cp_display",
/// labels={
/// "foo": "bar",
/// },
/// mysql={
/// "cloud_sql_id": "destination-csql",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[destination_csql]))
/// default = gcp.compute.Network("default", name="destination-csql")
/// mysqltomysql = gcp.databasemigrationservice.MigrationJob("mysqltomysql",
/// location="us-central1",
/// migration_job_id="my-migrationid",
/// display_name="my-migrationid_display",
/// labels={
/// "foo": "bar",
/// },
/// performance_config={
/// "dump_parallel_level": "MAX",
/// },
/// vpc_peering_connectivity={
/// "vpc": default.id,
/// },
/// dump_type="LOGICAL",
/// dump_flags={
/// "dump_flags": [{
/// "name": "max-allowed-packet",
/// "value": "1073741824",
/// }],
/// },
/// source=source_cp.name,
/// destination=destination_cp.name,
/// type="CONTINUOUS")
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
/// var sourceCsql = new Gcp.Sql.DatabaseInstance("source_csql", new()
/// {
/// Name = "source-csql",
/// DatabaseVersion = "MYSQL_5_7",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-n1-standard-1",
/// DeletionProtectionEnabled = false,
/// },
/// DeletionProtection = false,
/// });
///
/// var sourceSqlClientCert = new Gcp.Sql.SslCert("source_sql_client_cert", new()
/// {
/// CommonName = "cert",
/// Instance = sourceCsql.Name,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceCsql,
/// },
/// });
///
/// var sourceSqldbUser = new Gcp.Sql.User("source_sqldb_user", new()
/// {
/// Name = "username",
/// Instance = sourceCsql.Name,
/// Password = "password",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceSqlClientCert,
/// },
/// });
///
/// var sourceCp = new Gcp.DatabaseMigrationService.ConnectionProfile("source_cp", new()
/// {
/// Location = "us-central1",
/// ConnectionProfileId = "source-cp",
/// DisplayName = "source-cp_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Mysql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileMysqlArgs
/// {
/// Host = sourceCsql.IpAddresses.Apply(ipAddresses => ipAddresses[0].IpAddress),
/// Port = 3306,
/// Username = sourceSqldbUser.Name,
/// Password = sourceSqldbUser.Password,
/// Ssl = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileMysqlSslArgs
/// {
/// ClientKey = sourceSqlClientCert.PrivateKey,
/// ClientCertificate = sourceSqlClientCert.Cert,
/// CaCertificate = sourceSqlClientCert.ServerCaCert,
/// Type = "SERVER_CLIENT",
/// },
/// CloudSqlId = "source-csql",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceSqldbUser,
/// },
/// });
///
/// var destinationCsql = new Gcp.Sql.DatabaseInstance("destination_csql", new()
/// {
/// Name = "destination-csql",
/// DatabaseVersion = "MYSQL_5_7",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-n1-standard-1",
/// DeletionProtectionEnabled = false,
/// },
/// DeletionProtection = false,
/// });
///
/// var destinationCp = new Gcp.DatabaseMigrationService.ConnectionProfile("destination_cp", new()
/// {
/// Location = "us-central1",
/// ConnectionProfileId = "destination-cp",
/// DisplayName = "destination-cp_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Mysql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfileMysqlArgs
/// {
/// CloudSqlId = "destination-csql",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// destinationCsql,
/// },
/// });
///
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "destination-csql",
/// });
///
/// var mysqltomysql = new Gcp.DatabaseMigrationService.MigrationJob("mysqltomysql", new()
/// {
/// Location = "us-central1",
/// MigrationJobId = "my-migrationid",
/// DisplayName = "my-migrationid_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// PerformanceConfig = new Gcp.DatabaseMigrationService.Inputs.MigrationJobPerformanceConfigArgs
/// {
/// DumpParallelLevel = "MAX",
/// },
/// VpcPeeringConnectivity = new Gcp.DatabaseMigrationService.Inputs.MigrationJobVpcPeeringConnectivityArgs
/// {
/// Vpc = @default.Id,
/// },
/// DumpType = "LOGICAL",
/// DumpFlags = new Gcp.DatabaseMigrationService.Inputs.MigrationJobDumpFlagsArgs
/// {
/// DumpFlags = new[]
/// {
/// new Gcp.DatabaseMigrationService.Inputs.MigrationJobDumpFlagsDumpFlagArgs
/// {
/// Name = "max-allowed-packet",
/// Value = "1073741824",
/// },
/// },
/// },
/// Source = sourceCp.Name,
/// Destination = destinationCp.Name,
/// Type = "CONTINUOUS",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// sourceCsql, err := sql.NewDatabaseInstance(ctx, "source_csql", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("source-csql"),
/// DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier:                      pulumi.String("db-n1-standard-1"),
/// DeletionProtectionEnabled: pulumi.Bool(false),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// sourceSqlClientCert, err := sql.NewSslCert(ctx, "source_sql_client_cert", &sql.SslCertArgs{
/// CommonName: pulumi.String("cert"),
/// Instance:   sourceCsql.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceCsql,
/// }))
/// if err != nil {
/// return err
/// }
/// sourceSqldbUser, err := sql.NewUser(ctx, "source_sqldb_user", &sql.UserArgs{
/// Name:     pulumi.String("username"),
/// Instance: sourceCsql.Name,
/// Password: pulumi.String("password"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceSqlClientCert,
/// }))
/// if err != nil {
/// return err
/// }
/// sourceCp, err := databasemigrationservice.NewConnectionProfile(ctx, "source_cp", &databasemigrationservice.ConnectionProfileArgs{
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("source-cp"),
/// DisplayName:         pulumi.String("source-cp_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Mysql: &databasemigrationservice.ConnectionProfileMysqlArgs{
/// Host: sourceCsql.IpAddresses.ApplyT(func(ipAddresses []sql.DatabaseInstanceIpAddress) (*string, error) {
/// return &ipAddresses[0].IpAddress, nil
/// }).(pulumi.StringPtrOutput),
/// Port:     pulumi.Int(3306),
/// Username: sourceSqldbUser.Name,
/// Password: sourceSqldbUser.Password,
/// Ssl: &databasemigrationservice.ConnectionProfileMysqlSslArgs{
/// ClientKey:         sourceSqlClientCert.PrivateKey,
/// ClientCertificate: sourceSqlClientCert.Cert,
/// CaCertificate:     sourceSqlClientCert.ServerCaCert,
/// Type:              pulumi.String("SERVER_CLIENT"),
/// },
/// CloudSqlId: pulumi.String("source-csql"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceSqldbUser,
/// }))
/// if err != nil {
/// return err
/// }
/// destinationCsql, err := sql.NewDatabaseInstance(ctx, "destination_csql", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("destination-csql"),
/// DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier:                      pulumi.String("db-n1-standard-1"),
/// DeletionProtectionEnabled: pulumi.Bool(false),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// destinationCp, err := databasemigrationservice.NewConnectionProfile(ctx, "destination_cp", &databasemigrationservice.ConnectionProfileArgs{
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("destination-cp"),
/// DisplayName:         pulumi.String("destination-cp_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Mysql: &databasemigrationservice.ConnectionProfileMysqlArgs{
/// CloudSqlId: pulumi.String("destination-csql"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// destinationCsql,
/// }))
/// if err != nil {
/// return err
/// }
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("destination-csql"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = databasemigrationservice.NewMigrationJob(ctx, "mysqltomysql", &databasemigrationservice.MigrationJobArgs{
/// Location:       pulumi.String("us-central1"),
/// MigrationJobId: pulumi.String("my-migrationid"),
/// DisplayName:    pulumi.String("my-migrationid_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// PerformanceConfig: &databasemigrationservice.MigrationJobPerformanceConfigArgs{
/// DumpParallelLevel: pulumi.String("MAX"),
/// },
/// VpcPeeringConnectivity: &databasemigrationservice.MigrationJobVpcPeeringConnectivityArgs{
/// Vpc: _default.ID(),
/// },
/// DumpType: pulumi.String("LOGICAL"),
/// DumpFlags: &databasemigrationservice.MigrationJobDumpFlagsArgs{
/// DumpFlags: databasemigrationservice.MigrationJobDumpFlagsDumpFlagArray{
/// &databasemigrationservice.MigrationJobDumpFlagsDumpFlagArgs{
/// Name:  pulumi.String("max-allowed-packet"),
/// Value: pulumi.String("1073741824"),
/// },
/// },
/// },
/// Source:      sourceCp.Name,
/// Destination: destinationCp.Name,
/// Type:        pulumi.String("CONTINUOUS"),
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
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileMysqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfileMysqlSslArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.databasemigrationservice.MigrationJob;
/// import com.pulumi.gcp.databasemigrationservice.MigrationJobArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.MigrationJobPerformanceConfigArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.MigrationJobVpcPeeringConnectivityArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.MigrationJobDumpFlagsArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var sourceCsql = new DatabaseInstance("sourceCsql", DatabaseInstanceArgs.builder()
/// .name("source-csql")
/// .databaseVersion("MYSQL_5_7")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-n1-standard-1")
/// .deletionProtectionEnabled(false)
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var sourceSqlClientCert = new SslCert("sourceSqlClientCert", SslCertArgs.builder()
/// .commonName("cert")
/// .instance(sourceCsql.name())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceCsql)
/// .build());
///
/// var sourceSqldbUser = new User("sourceSqldbUser", UserArgs.builder()
/// .name("username")
/// .instance(sourceCsql.name())
/// .password("password")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceSqlClientCert)
/// .build());
///
/// var sourceCp = new ConnectionProfile("sourceCp", ConnectionProfileArgs.builder()
/// .location("us-central1")
/// .connectionProfileId("source-cp")
/// .displayName("source-cp_display")
/// .labels(Map.of("foo", "bar"))
/// .mysql(ConnectionProfileMysqlArgs.builder()
/// .host(sourceCsql.ipAddresses().applyValue(_ipAddresses -> _ipAddresses[0].ipAddress()))
/// .port(3306)
/// .username(sourceSqldbUser.name())
/// .password(sourceSqldbUser.password())
/// .ssl(ConnectionProfileMysqlSslArgs.builder()
/// .clientKey(sourceSqlClientCert.privateKey())
/// .clientCertificate(sourceSqlClientCert.cert())
/// .caCertificate(sourceSqlClientCert.serverCaCert())
/// .type("SERVER_CLIENT")
/// .build())
/// .cloudSqlId("source-csql")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceSqldbUser)
/// .build());
///
/// var destinationCsql = new DatabaseInstance("destinationCsql", DatabaseInstanceArgs.builder()
/// .name("destination-csql")
/// .databaseVersion("MYSQL_5_7")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-n1-standard-1")
/// .deletionProtectionEnabled(false)
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var destinationCp = new ConnectionProfile("destinationCp", ConnectionProfileArgs.builder()
/// .location("us-central1")
/// .connectionProfileId("destination-cp")
/// .displayName("destination-cp_display")
/// .labels(Map.of("foo", "bar"))
/// .mysql(ConnectionProfileMysqlArgs.builder()
/// .cloudSqlId("destination-csql")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(destinationCsql)
/// .build());
///
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("destination-csql")
/// .build());
///
/// var mysqltomysql = new MigrationJob("mysqltomysql", MigrationJobArgs.builder()
/// .location("us-central1")
/// .migrationJobId("my-migrationid")
/// .displayName("my-migrationid_display")
/// .labels(Map.of("foo", "bar"))
/// .performanceConfig(MigrationJobPerformanceConfigArgs.builder()
/// .dumpParallelLevel("MAX")
/// .build())
/// .vpcPeeringConnectivity(MigrationJobVpcPeeringConnectivityArgs.builder()
/// .vpc(default_.id())
/// .build())
/// .dumpType("LOGICAL")
/// .dumpFlags(MigrationJobDumpFlagsArgs.builder()
/// .dumpFlags(MigrationJobDumpFlagsDumpFlagArgs.builder()
/// .name("max-allowed-packet")
/// .value("1073741824")
/// .build())
/// .build())
/// .source(sourceCp.name())
/// .destination(destinationCp.name())
/// .type("CONTINUOUS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sourceCsql:
/// type: gcp:sql:DatabaseInstance
/// name: source_csql
/// properties:
/// name: source-csql
/// databaseVersion: MYSQL_5_7
/// settings:
/// tier: db-n1-standard-1
/// deletionProtectionEnabled: false
/// deletionProtection: false
/// sourceSqlClientCert:
/// type: gcp:sql:SslCert
/// name: source_sql_client_cert
/// properties:
/// commonName: cert
/// instance: ${sourceCsql.name}
/// options:
/// dependsOn:
/// - ${sourceCsql}
/// sourceSqldbUser:
/// type: gcp:sql:User
/// name: source_sqldb_user
/// properties:
/// name: username
/// instance: ${sourceCsql.name}
/// password: password
/// options:
/// dependsOn:
/// - ${sourceSqlClientCert}
/// sourceCp:
/// type: gcp:databasemigrationservice:ConnectionProfile
/// name: source_cp
/// properties:
/// location: us-central1
/// connectionProfileId: source-cp
/// displayName: source-cp_display
/// labels:
/// foo: bar
/// mysql:
/// host: ${sourceCsql.ipAddresses[0].ipAddress}
/// port: 3306
/// username: ${sourceSqldbUser.name}
/// password: ${sourceSqldbUser.password}
/// ssl:
/// clientKey: ${sourceSqlClientCert.privateKey}
/// clientCertificate: ${sourceSqlClientCert.cert}
/// caCertificate: ${sourceSqlClientCert.serverCaCert}
/// type: SERVER_CLIENT
/// cloudSqlId: source-csql
/// options:
/// dependsOn:
/// - ${sourceSqldbUser}
/// destinationCsql:
/// type: gcp:sql:DatabaseInstance
/// name: destination_csql
/// properties:
/// name: destination-csql
/// databaseVersion: MYSQL_5_7
/// settings:
/// tier: db-n1-standard-1
/// deletionProtectionEnabled: false
/// deletionProtection: false
/// destinationCp:
/// type: gcp:databasemigrationservice:ConnectionProfile
/// name: destination_cp
/// properties:
/// location: us-central1
/// connectionProfileId: destination-cp
/// displayName: destination-cp_display
/// labels:
/// foo: bar
/// mysql:
/// cloudSqlId: destination-csql
/// options:
/// dependsOn:
/// - ${destinationCsql}
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: destination-csql
/// mysqltomysql:
/// type: gcp:databasemigrationservice:MigrationJob
/// properties:
/// location: us-central1
/// migrationJobId: my-migrationid
/// displayName: my-migrationid_display
/// labels:
/// foo: bar
/// performanceConfig:
/// dumpParallelLevel: MAX
/// vpcPeeringConnectivity:
/// vpc: ${default.id}
/// dumpType: LOGICAL
/// dumpFlags:
/// dumpFlags:
/// - name: max-allowed-packet
/// value: '1073741824'
/// source: ${sourceCp.name}
/// destination: ${destinationCp.name}
/// type: CONTINUOUS
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Database Migration Service Migration Job Postgres To Postgres
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const sourceCsql = new gcp.sql.DatabaseInstance("source_csql", {
/// name: "source-csql",
/// databaseVersion: "POSTGRES_15",
/// settings: {
/// tier: "db-custom-2-13312",
/// deletionProtectionEnabled: false,
/// },
/// deletionProtection: false,
/// });
/// const sourceSqlClientCert = new gcp.sql.SslCert("source_sql_client_cert", {
/// commonName: "cert",
/// instance: sourceCsql.name,
/// }, {
/// dependsOn: [sourceCsql],
/// });
/// const sourceSqldbUser = new gcp.sql.User("source_sqldb_user", {
/// name: "username",
/// instance: sourceCsql.name,
/// password: "password",
/// }, {
/// dependsOn: [sourceSqlClientCert],
/// });
/// const sourceCp = new gcp.databasemigrationservice.ConnectionProfile("source_cp", {
/// location: "us-central1",
/// connectionProfileId: "source-cp",
/// displayName: "source-cp_display",
/// labels: {
/// foo: "bar",
/// },
/// postgresql: {
/// host: sourceCsql.ipAddresses.apply(ipAddresses => ipAddresses[0].ipAddress),
/// port: 3306,
/// username: sourceSqldbUser.name,
/// password: sourceSqldbUser.password,
/// ssl: {
/// clientKey: sourceSqlClientCert.privateKey,
/// clientCertificate: sourceSqlClientCert.cert,
/// caCertificate: sourceSqlClientCert.serverCaCert,
/// type: "SERVER_CLIENT",
/// },
/// cloudSqlId: "source-csql",
/// },
/// }, {
/// dependsOn: [sourceSqldbUser],
/// });
/// const destinationCsql = new gcp.sql.DatabaseInstance("destination_csql", {
/// name: "destination-csql",
/// databaseVersion: "POSTGRES_15",
/// settings: {
/// tier: "db-custom-2-13312",
/// deletionProtectionEnabled: false,
/// },
/// deletionProtection: false,
/// });
/// const destinationCp = new gcp.databasemigrationservice.ConnectionProfile("destination_cp", {
/// location: "us-central1",
/// connectionProfileId: "destination-cp",
/// displayName: "destination-cp_display",
/// labels: {
/// foo: "bar",
/// },
/// postgresql: {
/// cloudSqlId: "destination-csql",
/// },
/// }, {
/// dependsOn: [destinationCsql],
/// });
/// const psqltopsql = new gcp.databasemigrationservice.MigrationJob("psqltopsql", {
/// location: "us-central1",
/// migrationJobId: "my-migrationid",
/// displayName: "my-migrationid_display",
/// labels: {
/// foo: "bar",
/// },
/// staticIpConnectivity: {},
/// source: sourceCp.name,
/// destination: destinationCp.name,
/// type: "CONTINUOUS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// source_csql = gcp.sql.DatabaseInstance("source_csql",
/// name="source-csql",
/// database_version="POSTGRES_15",
/// settings={
/// "tier": "db-custom-2-13312",
/// "deletion_protection_enabled": False,
/// },
/// deletion_protection=False)
/// source_sql_client_cert = gcp.sql.SslCert("source_sql_client_cert",
/// common_name="cert",
/// instance=source_csql.name,
/// opts = pulumi.ResourceOptions(depends_on=[source_csql]))
/// source_sqldb_user = gcp.sql.User("source_sqldb_user",
/// name="username",
/// instance=source_csql.name,
/// password="password",
/// opts = pulumi.ResourceOptions(depends_on=[source_sql_client_cert]))
/// source_cp = gcp.databasemigrationservice.ConnectionProfile("source_cp",
/// location="us-central1",
/// connection_profile_id="source-cp",
/// display_name="source-cp_display",
/// labels={
/// "foo": "bar",
/// },
/// postgresql={
/// "host": source_csql.ip_addresses[0].ip_address,
/// "port": 3306,
/// "username": source_sqldb_user.name,
/// "password": source_sqldb_user.password,
/// "ssl": {
/// "client_key": source_sql_client_cert.private_key,
/// "client_certificate": source_sql_client_cert.cert,
/// "ca_certificate": source_sql_client_cert.server_ca_cert,
/// "type": "SERVER_CLIENT",
/// },
/// "cloud_sql_id": "source-csql",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[source_sqldb_user]))
/// destination_csql = gcp.sql.DatabaseInstance("destination_csql",
/// name="destination-csql",
/// database_version="POSTGRES_15",
/// settings={
/// "tier": "db-custom-2-13312",
/// "deletion_protection_enabled": False,
/// },
/// deletion_protection=False)
/// destination_cp = gcp.databasemigrationservice.ConnectionProfile("destination_cp",
/// location="us-central1",
/// connection_profile_id="destination-cp",
/// display_name="destination-cp_display",
/// labels={
/// "foo": "bar",
/// },
/// postgresql={
/// "cloud_sql_id": "destination-csql",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[destination_csql]))
/// psqltopsql = gcp.databasemigrationservice.MigrationJob("psqltopsql",
/// location="us-central1",
/// migration_job_id="my-migrationid",
/// display_name="my-migrationid_display",
/// labels={
/// "foo": "bar",
/// },
/// static_ip_connectivity={},
/// source=source_cp.name,
/// destination=destination_cp.name,
/// type="CONTINUOUS")
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
/// var sourceCsql = new Gcp.Sql.DatabaseInstance("source_csql", new()
/// {
/// Name = "source-csql",
/// DatabaseVersion = "POSTGRES_15",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-custom-2-13312",
/// DeletionProtectionEnabled = false,
/// },
/// DeletionProtection = false,
/// });
///
/// var sourceSqlClientCert = new Gcp.Sql.SslCert("source_sql_client_cert", new()
/// {
/// CommonName = "cert",
/// Instance = sourceCsql.Name,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceCsql,
/// },
/// });
///
/// var sourceSqldbUser = new Gcp.Sql.User("source_sqldb_user", new()
/// {
/// Name = "username",
/// Instance = sourceCsql.Name,
/// Password = "password",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceSqlClientCert,
/// },
/// });
///
/// var sourceCp = new Gcp.DatabaseMigrationService.ConnectionProfile("source_cp", new()
/// {
/// Location = "us-central1",
/// ConnectionProfileId = "source-cp",
/// DisplayName = "source-cp_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
/// {
/// Host = sourceCsql.IpAddresses.Apply(ipAddresses => ipAddresses[0].IpAddress),
/// Port = 3306,
/// Username = sourceSqldbUser.Name,
/// Password = sourceSqldbUser.Password,
/// Ssl = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlSslArgs
/// {
/// ClientKey = sourceSqlClientCert.PrivateKey,
/// ClientCertificate = sourceSqlClientCert.Cert,
/// CaCertificate = sourceSqlClientCert.ServerCaCert,
/// Type = "SERVER_CLIENT",
/// },
/// CloudSqlId = "source-csql",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceSqldbUser,
/// },
/// });
///
/// var destinationCsql = new Gcp.Sql.DatabaseInstance("destination_csql", new()
/// {
/// Name = "destination-csql",
/// DatabaseVersion = "POSTGRES_15",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-custom-2-13312",
/// DeletionProtectionEnabled = false,
/// },
/// DeletionProtection = false,
/// });
///
/// var destinationCp = new Gcp.DatabaseMigrationService.ConnectionProfile("destination_cp", new()
/// {
/// Location = "us-central1",
/// ConnectionProfileId = "destination-cp",
/// DisplayName = "destination-cp_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
/// {
/// CloudSqlId = "destination-csql",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// destinationCsql,
/// },
/// });
///
/// var psqltopsql = new Gcp.DatabaseMigrationService.MigrationJob("psqltopsql", new()
/// {
/// Location = "us-central1",
/// MigrationJobId = "my-migrationid",
/// DisplayName = "my-migrationid_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// StaticIpConnectivity = null,
/// Source = sourceCp.Name,
/// Destination = destinationCp.Name,
/// Type = "CONTINUOUS",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// sourceCsql, err := sql.NewDatabaseInstance(ctx, "source_csql", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("source-csql"),
/// DatabaseVersion: pulumi.String("POSTGRES_15"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier:                      pulumi.String("db-custom-2-13312"),
/// DeletionProtectionEnabled: pulumi.Bool(false),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// sourceSqlClientCert, err := sql.NewSslCert(ctx, "source_sql_client_cert", &sql.SslCertArgs{
/// CommonName: pulumi.String("cert"),
/// Instance:   sourceCsql.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceCsql,
/// }))
/// if err != nil {
/// return err
/// }
/// sourceSqldbUser, err := sql.NewUser(ctx, "source_sqldb_user", &sql.UserArgs{
/// Name:     pulumi.String("username"),
/// Instance: sourceCsql.Name,
/// Password: pulumi.String("password"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceSqlClientCert,
/// }))
/// if err != nil {
/// return err
/// }
/// sourceCp, err := databasemigrationservice.NewConnectionProfile(ctx, "source_cp", &databasemigrationservice.ConnectionProfileArgs{
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("source-cp"),
/// DisplayName:         pulumi.String("source-cp_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// Host: sourceCsql.IpAddresses.ApplyT(func(ipAddresses []sql.DatabaseInstanceIpAddress) (*string, error) {
/// return &ipAddresses[0].IpAddress, nil
/// }).(pulumi.StringPtrOutput),
/// Port:     pulumi.Int(3306),
/// Username: sourceSqldbUser.Name,
/// Password: sourceSqldbUser.Password,
/// Ssl: &databasemigrationservice.ConnectionProfilePostgresqlSslArgs{
/// ClientKey:         sourceSqlClientCert.PrivateKey,
/// ClientCertificate: sourceSqlClientCert.Cert,
/// CaCertificate:     sourceSqlClientCert.ServerCaCert,
/// Type:              pulumi.String("SERVER_CLIENT"),
/// },
/// CloudSqlId: pulumi.String("source-csql"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceSqldbUser,
/// }))
/// if err != nil {
/// return err
/// }
/// destinationCsql, err := sql.NewDatabaseInstance(ctx, "destination_csql", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("destination-csql"),
/// DatabaseVersion: pulumi.String("POSTGRES_15"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier:                      pulumi.String("db-custom-2-13312"),
/// DeletionProtectionEnabled: pulumi.Bool(false),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// destinationCp, err := databasemigrationservice.NewConnectionProfile(ctx, "destination_cp", &databasemigrationservice.ConnectionProfileArgs{
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("destination-cp"),
/// DisplayName:         pulumi.String("destination-cp_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// CloudSqlId: pulumi.String("destination-csql"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// destinationCsql,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = databasemigrationservice.NewMigrationJob(ctx, "psqltopsql", &databasemigrationservice.MigrationJobArgs{
/// Location:       pulumi.String("us-central1"),
/// MigrationJobId: pulumi.String("my-migrationid"),
/// DisplayName:    pulumi.String("my-migrationid_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// StaticIpConnectivity: &databasemigrationservice.MigrationJobStaticIpConnectivityArgs{},
/// Source:               sourceCp.Name,
/// Destination:          destinationCp.Name,
/// Type:                 pulumi.String("CONTINUOUS"),
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
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlSslArgs;
/// import com.pulumi.gcp.databasemigrationservice.MigrationJob;
/// import com.pulumi.gcp.databasemigrationservice.MigrationJobArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.MigrationJobStaticIpConnectivityArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var sourceCsql = new DatabaseInstance("sourceCsql", DatabaseInstanceArgs.builder()
/// .name("source-csql")
/// .databaseVersion("POSTGRES_15")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-custom-2-13312")
/// .deletionProtectionEnabled(false)
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var sourceSqlClientCert = new SslCert("sourceSqlClientCert", SslCertArgs.builder()
/// .commonName("cert")
/// .instance(sourceCsql.name())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceCsql)
/// .build());
///
/// var sourceSqldbUser = new User("sourceSqldbUser", UserArgs.builder()
/// .name("username")
/// .instance(sourceCsql.name())
/// .password("password")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceSqlClientCert)
/// .build());
///
/// var sourceCp = new ConnectionProfile("sourceCp", ConnectionProfileArgs.builder()
/// .location("us-central1")
/// .connectionProfileId("source-cp")
/// .displayName("source-cp_display")
/// .labels(Map.of("foo", "bar"))
/// .postgresql(ConnectionProfilePostgresqlArgs.builder()
/// .host(sourceCsql.ipAddresses().applyValue(_ipAddresses -> _ipAddresses[0].ipAddress()))
/// .port(3306)
/// .username(sourceSqldbUser.name())
/// .password(sourceSqldbUser.password())
/// .ssl(ConnectionProfilePostgresqlSslArgs.builder()
/// .clientKey(sourceSqlClientCert.privateKey())
/// .clientCertificate(sourceSqlClientCert.cert())
/// .caCertificate(sourceSqlClientCert.serverCaCert())
/// .type("SERVER_CLIENT")
/// .build())
/// .cloudSqlId("source-csql")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceSqldbUser)
/// .build());
///
/// var destinationCsql = new DatabaseInstance("destinationCsql", DatabaseInstanceArgs.builder()
/// .name("destination-csql")
/// .databaseVersion("POSTGRES_15")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-custom-2-13312")
/// .deletionProtectionEnabled(false)
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var destinationCp = new ConnectionProfile("destinationCp", ConnectionProfileArgs.builder()
/// .location("us-central1")
/// .connectionProfileId("destination-cp")
/// .displayName("destination-cp_display")
/// .labels(Map.of("foo", "bar"))
/// .postgresql(ConnectionProfilePostgresqlArgs.builder()
/// .cloudSqlId("destination-csql")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(destinationCsql)
/// .build());
///
/// var psqltopsql = new MigrationJob("psqltopsql", MigrationJobArgs.builder()
/// .location("us-central1")
/// .migrationJobId("my-migrationid")
/// .displayName("my-migrationid_display")
/// .labels(Map.of("foo", "bar"))
/// .staticIpConnectivity(MigrationJobStaticIpConnectivityArgs.builder()
/// .build())
/// .source(sourceCp.name())
/// .destination(destinationCp.name())
/// .type("CONTINUOUS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sourceCsql:
/// type: gcp:sql:DatabaseInstance
/// name: source_csql
/// properties:
/// name: source-csql
/// databaseVersion: POSTGRES_15
/// settings:
/// tier: db-custom-2-13312
/// deletionProtectionEnabled: false
/// deletionProtection: false
/// sourceSqlClientCert:
/// type: gcp:sql:SslCert
/// name: source_sql_client_cert
/// properties:
/// commonName: cert
/// instance: ${sourceCsql.name}
/// options:
/// dependsOn:
/// - ${sourceCsql}
/// sourceSqldbUser:
/// type: gcp:sql:User
/// name: source_sqldb_user
/// properties:
/// name: username
/// instance: ${sourceCsql.name}
/// password: password
/// options:
/// dependsOn:
/// - ${sourceSqlClientCert}
/// sourceCp:
/// type: gcp:databasemigrationservice:ConnectionProfile
/// name: source_cp
/// properties:
/// location: us-central1
/// connectionProfileId: source-cp
/// displayName: source-cp_display
/// labels:
/// foo: bar
/// postgresql:
/// host: ${sourceCsql.ipAddresses[0].ipAddress}
/// port: 3306
/// username: ${sourceSqldbUser.name}
/// password: ${sourceSqldbUser.password}
/// ssl:
/// clientKey: ${sourceSqlClientCert.privateKey}
/// clientCertificate: ${sourceSqlClientCert.cert}
/// caCertificate: ${sourceSqlClientCert.serverCaCert}
/// type: SERVER_CLIENT
/// cloudSqlId: source-csql
/// options:
/// dependsOn:
/// - ${sourceSqldbUser}
/// destinationCsql:
/// type: gcp:sql:DatabaseInstance
/// name: destination_csql
/// properties:
/// name: destination-csql
/// databaseVersion: POSTGRES_15
/// settings:
/// tier: db-custom-2-13312
/// deletionProtectionEnabled: false
/// deletionProtection: false
/// destinationCp:
/// type: gcp:databasemigrationservice:ConnectionProfile
/// name: destination_cp
/// properties:
/// location: us-central1
/// connectionProfileId: destination-cp
/// displayName: destination-cp_display
/// labels:
/// foo: bar
/// postgresql:
/// cloudSqlId: destination-csql
/// options:
/// dependsOn:
/// - ${destinationCsql}
/// psqltopsql:
/// type: gcp:databasemigrationservice:MigrationJob
/// properties:
/// location: us-central1
/// migrationJobId: my-migrationid
/// displayName: my-migrationid_display
/// labels:
/// foo: bar
/// staticIpConnectivity: {}
/// source: ${sourceCp.name}
/// destination: ${destinationCp.name}
/// type: CONTINUOUS
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Database Migration Service Migration Job Postgres To Alloydb
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const sourceCsql = new gcp.sql.DatabaseInstance("source_csql", {
/// name: "source-csql",
/// databaseVersion: "POSTGRES_15",
/// settings: {
/// tier: "db-custom-2-13312",
/// deletionProtectionEnabled: false,
/// },
/// deletionProtection: false,
/// });
/// const sourceSqlClientCert = new gcp.sql.SslCert("source_sql_client_cert", {
/// commonName: "cert",
/// instance: sourceCsql.name,
/// }, {
/// dependsOn: [sourceCsql],
/// });
/// const sourceSqldbUser = new gcp.sql.User("source_sqldb_user", {
/// name: "username",
/// instance: sourceCsql.name,
/// password: "password",
/// }, {
/// dependsOn: [sourceSqlClientCert],
/// });
/// const sourceCp = new gcp.databasemigrationservice.ConnectionProfile("source_cp", {
/// location: "us-central1",
/// connectionProfileId: "source-cp",
/// displayName: "source-cp_display",
/// labels: {
/// foo: "bar",
/// },
/// postgresql: {
/// host: sourceCsql.ipAddresses.apply(ipAddresses => ipAddresses[0].ipAddress),
/// port: 3306,
/// username: sourceSqldbUser.name,
/// password: sourceSqldbUser.password,
/// ssl: {
/// clientKey: sourceSqlClientCert.privateKey,
/// clientCertificate: sourceSqlClientCert.cert,
/// caCertificate: sourceSqlClientCert.serverCaCert,
/// type: "SERVER_CLIENT",
/// },
/// cloudSqlId: "source-csql",
/// },
/// }, {
/// dependsOn: [sourceSqldbUser],
/// });
/// const _default = new gcp.compute.Network("default", {name: "destination-alloydb"});
/// const destinationAlloydb = new gcp.alloydb.Cluster("destination_alloydb", {
/// clusterId: "destination-alloydb",
/// location: "us-central1",
/// networkConfig: {
/// network: _default.id,
/// },
/// databaseVersion: "POSTGRES_15",
/// initialUser: {
/// user: "destination-alloydb",
/// password: "destination-alloydb",
/// },
/// deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
/// name: "destination-alloydb",
/// addressType: "INTERNAL",
/// purpose: "VPC_PEERING",
/// prefixLength: 16,
/// network: _default.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
/// network: _default.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const destinationAlloydbPrimary = new gcp.alloydb.Instance("destination_alloydb_primary", {
/// cluster: destinationAlloydb.name,
/// instanceId: "destination-alloydb-primary",
/// instanceType: "PRIMARY",
/// }, {
/// dependsOn: [vpcConnection],
/// });
/// const destinationCp = new gcp.databasemigrationservice.ConnectionProfile("destination_cp", {
/// location: "us-central1",
/// connectionProfileId: "destination-cp",
/// displayName: "destination-cp_display",
/// labels: {
/// foo: "bar",
/// },
/// postgresql: {
/// alloydbClusterId: "destination-alloydb",
/// },
/// }, {
/// dependsOn: [
/// destinationAlloydb,
/// destinationAlloydbPrimary,
/// ],
/// });
/// const psqltoalloydb = new gcp.databasemigrationservice.MigrationJob("psqltoalloydb", {
/// location: "us-central1",
/// migrationJobId: "my-migrationid",
/// displayName: "my-migrationid_display",
/// labels: {
/// foo: "bar",
/// },
/// staticIpConnectivity: {},
/// source: sourceCp.name,
/// destination: destinationCp.name,
/// type: "CONTINUOUS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// source_csql = gcp.sql.DatabaseInstance("source_csql",
/// name="source-csql",
/// database_version="POSTGRES_15",
/// settings={
/// "tier": "db-custom-2-13312",
/// "deletion_protection_enabled": False,
/// },
/// deletion_protection=False)
/// source_sql_client_cert = gcp.sql.SslCert("source_sql_client_cert",
/// common_name="cert",
/// instance=source_csql.name,
/// opts = pulumi.ResourceOptions(depends_on=[source_csql]))
/// source_sqldb_user = gcp.sql.User("source_sqldb_user",
/// name="username",
/// instance=source_csql.name,
/// password="password",
/// opts = pulumi.ResourceOptions(depends_on=[source_sql_client_cert]))
/// source_cp = gcp.databasemigrationservice.ConnectionProfile("source_cp",
/// location="us-central1",
/// connection_profile_id="source-cp",
/// display_name="source-cp_display",
/// labels={
/// "foo": "bar",
/// },
/// postgresql={
/// "host": source_csql.ip_addresses[0].ip_address,
/// "port": 3306,
/// "username": source_sqldb_user.name,
/// "password": source_sqldb_user.password,
/// "ssl": {
/// "client_key": source_sql_client_cert.private_key,
/// "client_certificate": source_sql_client_cert.cert,
/// "ca_certificate": source_sql_client_cert.server_ca_cert,
/// "type": "SERVER_CLIENT",
/// },
/// "cloud_sql_id": "source-csql",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[source_sqldb_user]))
/// default = gcp.compute.Network("default", name="destination-alloydb")
/// destination_alloydb = gcp.alloydb.Cluster("destination_alloydb",
/// cluster_id="destination-alloydb",
/// location="us-central1",
/// network_config={
/// "network": default.id,
/// },
/// database_version="POSTGRES_15",
/// initial_user={
/// "user": "destination-alloydb",
/// "password": "destination-alloydb",
/// },
/// deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
/// name="destination-alloydb",
/// address_type="INTERNAL",
/// purpose="VPC_PEERING",
/// prefix_length=16,
/// network=default.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
/// network=default.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[private_ip_alloc.name])
/// destination_alloydb_primary = gcp.alloydb.Instance("destination_alloydb_primary",
/// cluster=destination_alloydb.name,
/// instance_id="destination-alloydb-primary",
/// instance_type="PRIMARY",
/// opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// destination_cp = gcp.databasemigrationservice.ConnectionProfile("destination_cp",
/// location="us-central1",
/// connection_profile_id="destination-cp",
/// display_name="destination-cp_display",
/// labels={
/// "foo": "bar",
/// },
/// postgresql={
/// "alloydb_cluster_id": "destination-alloydb",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[
/// destination_alloydb,
/// destination_alloydb_primary,
/// ]))
/// psqltoalloydb = gcp.databasemigrationservice.MigrationJob("psqltoalloydb",
/// location="us-central1",
/// migration_job_id="my-migrationid",
/// display_name="my-migrationid_display",
/// labels={
/// "foo": "bar",
/// },
/// static_ip_connectivity={},
/// source=source_cp.name,
/// destination=destination_cp.name,
/// type="CONTINUOUS")
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
/// var sourceCsql = new Gcp.Sql.DatabaseInstance("source_csql", new()
/// {
/// Name = "source-csql",
/// DatabaseVersion = "POSTGRES_15",
/// Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
/// {
/// Tier = "db-custom-2-13312",
/// DeletionProtectionEnabled = false,
/// },
/// DeletionProtection = false,
/// });
///
/// var sourceSqlClientCert = new Gcp.Sql.SslCert("source_sql_client_cert", new()
/// {
/// CommonName = "cert",
/// Instance = sourceCsql.Name,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceCsql,
/// },
/// });
///
/// var sourceSqldbUser = new Gcp.Sql.User("source_sqldb_user", new()
/// {
/// Name = "username",
/// Instance = sourceCsql.Name,
/// Password = "password",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceSqlClientCert,
/// },
/// });
///
/// var sourceCp = new Gcp.DatabaseMigrationService.ConnectionProfile("source_cp", new()
/// {
/// Location = "us-central1",
/// ConnectionProfileId = "source-cp",
/// DisplayName = "source-cp_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
/// {
/// Host = sourceCsql.IpAddresses.Apply(ipAddresses => ipAddresses[0].IpAddress),
/// Port = 3306,
/// Username = sourceSqldbUser.Name,
/// Password = sourceSqldbUser.Password,
/// Ssl = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlSslArgs
/// {
/// ClientKey = sourceSqlClientCert.PrivateKey,
/// ClientCertificate = sourceSqlClientCert.Cert,
/// CaCertificate = sourceSqlClientCert.ServerCaCert,
/// Type = "SERVER_CLIENT",
/// },
/// CloudSqlId = "source-csql",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceSqldbUser,
/// },
/// });
///
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "destination-alloydb",
/// });
///
/// var destinationAlloydb = new Gcp.Alloydb.Cluster("destination_alloydb", new()
/// {
/// ClusterId = "destination-alloydb",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Id,
/// },
/// DatabaseVersion = "POSTGRES_15",
/// InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
/// {
/// User = "destination-alloydb",
/// Password = "destination-alloydb",
/// },
/// DeletionProtection = false,
/// });
///
/// var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
/// {
/// Name = "destination-alloydb",
/// AddressType = "INTERNAL",
/// Purpose = "VPC_PEERING",
/// PrefixLength = 16,
/// Network = @default.Id,
/// });
///
/// var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
/// {
/// Network = @default.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// privateIpAlloc.Name,
/// },
/// });
///
/// var destinationAlloydbPrimary = new Gcp.Alloydb.Instance("destination_alloydb_primary", new()
/// {
/// Cluster = destinationAlloydb.Name,
/// InstanceId = "destination-alloydb-primary",
/// InstanceType = "PRIMARY",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// vpcConnection,
/// },
/// });
///
/// var destinationCp = new Gcp.DatabaseMigrationService.ConnectionProfile("destination_cp", new()
/// {
/// Location = "us-central1",
/// ConnectionProfileId = "destination-cp",
/// DisplayName = "destination-cp_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// Postgresql = new Gcp.DatabaseMigrationService.Inputs.ConnectionProfilePostgresqlArgs
/// {
/// AlloydbClusterId = "destination-alloydb",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// destinationAlloydb,
/// destinationAlloydbPrimary,
/// },
/// });
///
/// var psqltoalloydb = new Gcp.DatabaseMigrationService.MigrationJob("psqltoalloydb", new()
/// {
/// Location = "us-central1",
/// MigrationJobId = "my-migrationid",
/// DisplayName = "my-migrationid_display",
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// StaticIpConnectivity = null,
/// Source = sourceCp.Name,
/// Destination = destinationCp.Name,
/// Type = "CONTINUOUS",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/databasemigrationservice"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// sourceCsql, err := sql.NewDatabaseInstance(ctx, "source_csql", &sql.DatabaseInstanceArgs{
/// Name:            pulumi.String("source-csql"),
/// DatabaseVersion: pulumi.String("POSTGRES_15"),
/// Settings: &sql.DatabaseInstanceSettingsArgs{
/// Tier:                      pulumi.String("db-custom-2-13312"),
/// DeletionProtectionEnabled: pulumi.Bool(false),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// sourceSqlClientCert, err := sql.NewSslCert(ctx, "source_sql_client_cert", &sql.SslCertArgs{
/// CommonName: pulumi.String("cert"),
/// Instance:   sourceCsql.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceCsql,
/// }))
/// if err != nil {
/// return err
/// }
/// sourceSqldbUser, err := sql.NewUser(ctx, "source_sqldb_user", &sql.UserArgs{
/// Name:     pulumi.String("username"),
/// Instance: sourceCsql.Name,
/// Password: pulumi.String("password"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceSqlClientCert,
/// }))
/// if err != nil {
/// return err
/// }
/// sourceCp, err := databasemigrationservice.NewConnectionProfile(ctx, "source_cp", &databasemigrationservice.ConnectionProfileArgs{
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("source-cp"),
/// DisplayName:         pulumi.String("source-cp_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// Host: sourceCsql.IpAddresses.ApplyT(func(ipAddresses []sql.DatabaseInstanceIpAddress) (*string, error) {
/// return &ipAddresses[0].IpAddress, nil
/// }).(pulumi.StringPtrOutput),
/// Port:     pulumi.Int(3306),
/// Username: sourceSqldbUser.Name,
/// Password: sourceSqldbUser.Password,
/// Ssl: &databasemigrationservice.ConnectionProfilePostgresqlSslArgs{
/// ClientKey:         sourceSqlClientCert.PrivateKey,
/// ClientCertificate: sourceSqlClientCert.Cert,
/// CaCertificate:     sourceSqlClientCert.ServerCaCert,
/// Type:              pulumi.String("SERVER_CLIENT"),
/// },
/// CloudSqlId: pulumi.String("source-csql"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceSqldbUser,
/// }))
/// if err != nil {
/// return err
/// }
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("destination-alloydb"),
/// })
/// if err != nil {
/// return err
/// }
/// destinationAlloydb, err := alloydb.NewCluster(ctx, "destination_alloydb", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("destination-alloydb"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: _default.ID(),
/// },
/// DatabaseVersion: pulumi.String("POSTGRES_15"),
/// InitialUser: &alloydb.ClusterInitialUserArgs{
/// User:     pulumi.String("destination-alloydb"),
/// Password: pulumi.String("destination-alloydb"),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("destination-alloydb"),
/// AddressType:  pulumi.String("INTERNAL"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// PrefixLength: pulumi.Int(16),
/// Network:      _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: _default.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAlloc.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// destinationAlloydbPrimary, err := alloydb.NewInstance(ctx, "destination_alloydb_primary", &alloydb.InstanceArgs{
/// Cluster:      destinationAlloydb.Name,
/// InstanceId:   pulumi.String("destination-alloydb-primary"),
/// InstanceType: pulumi.String("PRIMARY"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// vpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// destinationCp, err := databasemigrationservice.NewConnectionProfile(ctx, "destination_cp", &databasemigrationservice.ConnectionProfileArgs{
/// Location:            pulumi.String("us-central1"),
/// ConnectionProfileId: pulumi.String("destination-cp"),
/// DisplayName:         pulumi.String("destination-cp_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// Postgresql: &databasemigrationservice.ConnectionProfilePostgresqlArgs{
/// AlloydbClusterId: pulumi.String("destination-alloydb"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// destinationAlloydb,
/// destinationAlloydbPrimary,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = databasemigrationservice.NewMigrationJob(ctx, "psqltoalloydb", &databasemigrationservice.MigrationJobArgs{
/// Location:       pulumi.String("us-central1"),
/// MigrationJobId: pulumi.String("my-migrationid"),
/// DisplayName:    pulumi.String("my-migrationid_display"),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// StaticIpConnectivity: &databasemigrationservice.MigrationJobStaticIpConnectivityArgs{},
/// Source:               sourceCp.Name,
/// Destination:          destinationCp.Name,
/// Type:                 pulumi.String("CONTINUOUS"),
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
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfile;
/// import com.pulumi.gcp.databasemigrationservice.ConnectionProfileArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.ConnectionProfilePostgresqlSslArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.databasemigrationservice.MigrationJob;
/// import com.pulumi.gcp.databasemigrationservice.MigrationJobArgs;
/// import com.pulumi.gcp.databasemigrationservice.inputs.MigrationJobStaticIpConnectivityArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var sourceCsql = new DatabaseInstance("sourceCsql", DatabaseInstanceArgs.builder()
/// .name("source-csql")
/// .databaseVersion("POSTGRES_15")
/// .settings(DatabaseInstanceSettingsArgs.builder()
/// .tier("db-custom-2-13312")
/// .deletionProtectionEnabled(false)
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var sourceSqlClientCert = new SslCert("sourceSqlClientCert", SslCertArgs.builder()
/// .commonName("cert")
/// .instance(sourceCsql.name())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceCsql)
/// .build());
///
/// var sourceSqldbUser = new User("sourceSqldbUser", UserArgs.builder()
/// .name("username")
/// .instance(sourceCsql.name())
/// .password("password")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceSqlClientCert)
/// .build());
///
/// var sourceCp = new ConnectionProfile("sourceCp", ConnectionProfileArgs.builder()
/// .location("us-central1")
/// .connectionProfileId("source-cp")
/// .displayName("source-cp_display")
/// .labels(Map.of("foo", "bar"))
/// .postgresql(ConnectionProfilePostgresqlArgs.builder()
/// .host(sourceCsql.ipAddresses().applyValue(_ipAddresses -> _ipAddresses[0].ipAddress()))
/// .port(3306)
/// .username(sourceSqldbUser.name())
/// .password(sourceSqldbUser.password())
/// .ssl(ConnectionProfilePostgresqlSslArgs.builder()
/// .clientKey(sourceSqlClientCert.privateKey())
/// .clientCertificate(sourceSqlClientCert.cert())
/// .caCertificate(sourceSqlClientCert.serverCaCert())
/// .type("SERVER_CLIENT")
/// .build())
/// .cloudSqlId("source-csql")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceSqldbUser)
/// .build());
///
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("destination-alloydb")
/// .build());
///
/// var destinationAlloydb = new Cluster("destinationAlloydb", ClusterArgs.builder()
/// .clusterId("destination-alloydb")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .databaseVersion("POSTGRES_15")
/// .initialUser(ClusterInitialUserArgs.builder()
/// .user("destination-alloydb")
/// .password("destination-alloydb")
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
/// .name("destination-alloydb")
/// .addressType("INTERNAL")
/// .purpose("VPC_PEERING")
/// .prefixLength(16)
/// .network(default_.id())
/// .build());
///
/// var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
/// .network(default_.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(privateIpAlloc.name())
/// .build());
///
/// var destinationAlloydbPrimary = new Instance("destinationAlloydbPrimary", InstanceArgs.builder()
/// .cluster(destinationAlloydb.name())
/// .instanceId("destination-alloydb-primary")
/// .instanceType("PRIMARY")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(vpcConnection)
/// .build());
///
/// var destinationCp = new ConnectionProfile("destinationCp", ConnectionProfileArgs.builder()
/// .location("us-central1")
/// .connectionProfileId("destination-cp")
/// .displayName("destination-cp_display")
/// .labels(Map.of("foo", "bar"))
/// .postgresql(ConnectionProfilePostgresqlArgs.builder()
/// .alloydbClusterId("destination-alloydb")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// destinationAlloydb,
/// destinationAlloydbPrimary)
/// .build());
///
/// var psqltoalloydb = new MigrationJob("psqltoalloydb", MigrationJobArgs.builder()
/// .location("us-central1")
/// .migrationJobId("my-migrationid")
/// .displayName("my-migrationid_display")
/// .labels(Map.of("foo", "bar"))
/// .staticIpConnectivity(MigrationJobStaticIpConnectivityArgs.builder()
/// .build())
/// .source(sourceCp.name())
/// .destination(destinationCp.name())
/// .type("CONTINUOUS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sourceCsql:
/// type: gcp:sql:DatabaseInstance
/// name: source_csql
/// properties:
/// name: source-csql
/// databaseVersion: POSTGRES_15
/// settings:
/// tier: db-custom-2-13312
/// deletionProtectionEnabled: false
/// deletionProtection: false
/// sourceSqlClientCert:
/// type: gcp:sql:SslCert
/// name: source_sql_client_cert
/// properties:
/// commonName: cert
/// instance: ${sourceCsql.name}
/// options:
/// dependsOn:
/// - ${sourceCsql}
/// sourceSqldbUser:
/// type: gcp:sql:User
/// name: source_sqldb_user
/// properties:
/// name: username
/// instance: ${sourceCsql.name}
/// password: password
/// options:
/// dependsOn:
/// - ${sourceSqlClientCert}
/// sourceCp:
/// type: gcp:databasemigrationservice:ConnectionProfile
/// name: source_cp
/// properties:
/// location: us-central1
/// connectionProfileId: source-cp
/// displayName: source-cp_display
/// labels:
/// foo: bar
/// postgresql:
/// host: ${sourceCsql.ipAddresses[0].ipAddress}
/// port: 3306
/// username: ${sourceSqldbUser.name}
/// password: ${sourceSqldbUser.password}
/// ssl:
/// clientKey: ${sourceSqlClientCert.privateKey}
/// clientCertificate: ${sourceSqlClientCert.cert}
/// caCertificate: ${sourceSqlClientCert.serverCaCert}
/// type: SERVER_CLIENT
/// cloudSqlId: source-csql
/// options:
/// dependsOn:
/// - ${sourceSqldbUser}
/// destinationAlloydb:
/// type: gcp:alloydb:Cluster
/// name: destination_alloydb
/// properties:
/// clusterId: destination-alloydb
/// location: us-central1
/// networkConfig:
/// network: ${default.id}
/// databaseVersion: POSTGRES_15
/// initialUser:
/// user: destination-alloydb
/// password: destination-alloydb
/// deletionProtection: false
/// destinationAlloydbPrimary:
/// type: gcp:alloydb:Instance
/// name: destination_alloydb_primary
/// properties:
/// cluster: ${destinationAlloydb.name}
/// instanceId: destination-alloydb-primary
/// instanceType: PRIMARY
/// options:
/// dependsOn:
/// - ${vpcConnection}
/// privateIpAlloc:
/// type: gcp:compute:GlobalAddress
/// name: private_ip_alloc
/// properties:
/// name: destination-alloydb
/// addressType: INTERNAL
/// purpose: VPC_PEERING
/// prefixLength: 16
/// network: ${default.id}
/// vpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: vpc_connection
/// properties:
/// network: ${default.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${privateIpAlloc.name}
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: destination-alloydb
/// destinationCp:
/// type: gcp:databasemigrationservice:ConnectionProfile
/// name: destination_cp
/// properties:
/// location: us-central1
/// connectionProfileId: destination-cp
/// displayName: destination-cp_display
/// labels:
/// foo: bar
/// postgresql:
/// alloydbClusterId: destination-alloydb
/// options:
/// dependsOn:
/// - ${destinationAlloydb}
/// - ${destinationAlloydbPrimary}
/// psqltoalloydb:
/// type: gcp:databasemigrationservice:MigrationJob
/// properties:
/// location: us-central1
/// migrationJobId: my-migrationid
/// displayName: my-migrationid_display
/// labels:
/// foo: bar
/// staticIpConnectivity: {}
/// source: ${sourceCp.name}
/// destination: ${destinationCp.name}
/// type: CONTINUOUS
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
/// MigrationJob can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/migrationJobs/{{migration_job_id}}`
///
/// * `{{project}}/{{location}}/{{migration_job_id}}`
///
/// * `{{location}}/{{migration_job_id}}`
///
/// When using the `pulumi import` command, MigrationJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/migrationJob:MigrationJob default projects/{{project}}/locations/{{location}}/migrationJobs/{{migration_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/migrationJob:MigrationJob default {{project}}/{{location}}/{{migration_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:databasemigrationservice/migrationJob:MigrationJob default {{location}}/{{migration_job_id}}
/// ```
class MigrationJob extends CustomResource {
  /// Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  late final Output<String> createTime;

  /// The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  late final Output<String> destination;

  /// The migration job display name.
  late final Output<String?> displayName;

  /// The initial dump flags.
  /// Structure is documented below.
  late final Output<MigrationJobDumpFlags?> dumpFlags;

  /// The path to the dump file in Google Cloud Storage,
  /// in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  /// This field and the <span pulumi-lang-nodejs=""dumpFlags"" pulumi-lang-dotnet=""DumpFlags"" pulumi-lang-go=""dumpFlags"" pulumi-lang-python=""dump_flags"" pulumi-lang-yaml=""dumpFlags"" pulumi-lang-java=""dumpFlags"">"dump_flags"</span> field are mutually exclusive.
  late final Output<String?> dumpPath;

  /// The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// migrations only.
  /// Possible values are: `LOGICAL`, `PHYSICAL`.
  late final Output<String?> dumpType;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Output only. The error details in case of state FAILED.
  /// Structure is documented below.
  late final Output<List<MigrationJobError>> errors;

  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the migration job should reside.
  late final Output<String?> location;

  /// The ID of the migration job.
  late final Output<String> migrationJobId;

  /// The name of this migration job resource in the form of projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  late final Output<String> name;

  /// Data dump parallelism settings used by the migration.
  /// Structure is documented below.
  late final Output<MigrationJobPerformanceConfig?> performanceConfig;

  /// The current migration job phase.
  late final Output<String> phase;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  late final Output<MigrationJobReverseSshConnectivity?> reverseSshConnectivity;

  /// The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  late final Output<String> source;

  /// The current migration job state.
  late final Output<String> state;

  /// If set to an empty object (`{}`), the source database will allow incoming
  /// connections from the public IP of the destination database.
  /// You can retrieve the public IP of the Cloud SQL instance from the
  /// Cloud SQL console or using Cloud SQL APIs.
  late final Output<Map<String, dynamic>?> staticIpConnectivity;

  /// The type of the migration job.
  /// Possible values are: `ONE_TIME`, `CONTINUOUS`.
  late final Output<String> type;

  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  late final Output<MigrationJobVpcPeeringConnectivity?> vpcPeeringConnectivity;

  MigrationJob(
    String name, {
    MigrationJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:databasemigrationservice/migrationJob:MigrationJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.destination = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String?>();
    this.dumpFlags = Output.createUnknown<MigrationJobDumpFlags?>();
    this.dumpPath = Output.createUnknown<String?>();
    this.dumpType = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.errors = Output.createUnknown<List<MigrationJobError>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String?>();
    this.migrationJobId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.performanceConfig =
        Output.createUnknown<MigrationJobPerformanceConfig?>();
    this.phase = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.reverseSshConnectivity =
        Output.createUnknown<MigrationJobReverseSshConnectivity?>();
    this.source = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.staticIpConnectivity = Output.createUnknown<Map<String, dynamic>?>();
    this.type = Output.createUnknown<String>();
    this.vpcPeeringConnectivity =
        Output.createUnknown<MigrationJobVpcPeeringConnectivity?>();
  }
}
