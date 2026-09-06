import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_data_capture_args.dart';
import 'change_data_capture_folder_response.dart';
import 'mapper_policy_response.dart';
import 'mapper_source_connections_info_response.dart';
import 'mapper_target_connections_info_response.dart';
import 'system_data_response.dart';

/// Change data capture resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ChangeDataCapture_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var changeDataCapture = new AzureNative.DataFactory.ChangeDataCapture("changeDataCapture", new()
///     {
///         AllowVNetOverride = false,
///         ChangeDataCaptureName = "exampleChangeDataCapture",
///         Description = "Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database with automapped and non-automapped mappings.",
///         FactoryName = "exampleFactoryName",
///         Policy = new AzureNative.DataFactory.Inputs.MapperPolicyArgs
///         {
///             Mode = "Microbatch",
///             Recurrence = new AzureNative.DataFactory.Inputs.MapperPolicyRecurrenceArgs
///             {
///                 Frequency = AzureNative.DataFactory.FrequencyType.Minute,
///                 Interval = 15,
///             },
///         },
///         ResourceGroupName = "exampleResourceGroup",
///         SourceConnectionsInfo = new[]
///         {
///             new AzureNative.DataFactory.Inputs.MapperSourceConnectionsInfoArgs
///             {
///                 Connection = new AzureNative.DataFactory.Inputs.MapperConnectionArgs
///                 {
///                     CommonDslConnectorProperties = new[]
///                     {
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "allowSchemaDrift",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "inferDriftedColumnTypes",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "format",
///                             Value = "delimited",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "dateFormats",
///                             Value = new[]
///                             {
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd",
///                             },
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "timestampFormats",
///                             Value = new[]
///                             {
///                                 "yyyyMMddHHmm",
///                                 "yyyyMMdd HHmm",
///                                 "yyyyMMddHHmmss",
///                                 "yyyyMMdd HHmmss",
///                                 "dd-MM-yyyy HH:mm:ss",
///                                 "dd-MM-yyyy HH:mm",
///                                 "yyyy-M-d H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm",
///                                 "yyyy.MM.dd HH:mm:ss",
///                                 "MM/dd/yyyy HH:mm:ss",
///                                 "M/d/yyyy H:m:s",
///                                 "yyyy/MM/dd HH:mm:ss",
///                                 "yyyy/M/d H:m:s",
///                                 "dd MMM yyyy HH:mm:ss",
///                                 "dd MMMM yyyy HH:mm:ss",
///                                 "d MMM yyyy H:m:s",
///                                 "d MMMM yyyy H:m:s",
///                                 "d-M-yyyy H:m:s",
///                                 "d-M-yyyy H:m",
///                                 "yyyy-M-d H:m",
///                                 "MM/dd/yyyy HH:mm",
///                                 "M/d/yyyy H:m",
///                                 "yyyy/MM/dd HH:mm",
///                                 "yyyy/M/d H:m",
///                                 "dd MMMM yyyy HH:mm",
///                                 "dd MMM yyyy HH:mm",
///                                 "d MMMM yyyy H:m",
///                                 "d MMM yyyy H:m",
///                                 "MM-dd-yyyy hh:mm:ss a",
///                                 "MM-dd-yyyy HH:mm:ss",
///                                 "MM/dd/yyyy hh:mm:ss a",
///                                 "yyyy.MM.dd hh:mm:ss a",
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd",
///                             },
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "enableCdc",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "skipInitialLoad",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "columnNamesAsHeader",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "columnDelimiter",
///                             Value = ",",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "escapeChar",
///                             Value = "\\\\",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "quoteChar",
///                             Value = "\\\"",
///                         },
///                     },
///                     IsInlineDataset = true,
///                     LinkedService = new AzureNative.DataFactory.Inputs.LinkedServiceReferenceArgs
///                     {
///                         ReferenceName = "amjaAdls03",
///                         Type = AzureNative.DataFactory.Type.LinkedServiceReference,
///                     },
///                     LinkedServiceType = "AzureBlobFS",
///                     Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                 },
///                 SourceEntities = new[]
///                 {
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "folderPath",
///                                 Value = "customer",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "source/customer",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "short",
///                                 Name = "CustId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustAddres",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepLoc",
///                             },
///                         },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "folderPath",
///                                 Value = "employee",
///                             },
///                         },
///                         Name = "source/employee",
///                         Schema = new() { },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "lookup",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "lookup",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "lookup",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "short",
///                                 Name = "EmpId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "EmpName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "HomeAddress",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "OfficeAddress",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "integer",
///                                 Name = "EmpPhoneNumber",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "DepName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "DepLoc",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "double",
///                                 Name = "DecimalCol",
///                             },
///                         },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "folderPath",
///                                 Value = "justSchema",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "source/justSchema",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustAddres",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepLoc",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         TargetConnectionsInfo = new[]
///         {
///             new AzureNative.DataFactory.Inputs.MapperTargetConnectionsInfoArgs
///             {
///                 Connection = new AzureNative.DataFactory.Inputs.MapperConnectionArgs
///                 {
///                     CommonDslConnectorProperties = new[]
///                     {
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "allowSchemaDrift",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "inferDriftedColumnTypes",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "format",
///                             Value = "table",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "store",
///                             Value = "sqlserver",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "databaseType",
///                             Value = "databaseType",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "database",
///                             Value = "database",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "deletable",
///                             Value = false,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "insertable",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "updateable",
///                             Value = false,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "upsertable",
///                             Value = false,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "skipDuplicateMapInputs",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "skipDuplicateMapOutputs",
///                             Value = true,
///                         },
///                     },
///                     IsInlineDataset = true,
///                     LinkedService = new AzureNative.DataFactory.Inputs.LinkedServiceReferenceArgs
///                     {
///                         ReferenceName = "amjaSql",
///                         Type = AzureNative.DataFactory.Type.LinkedServiceReference,
///                     },
///                     LinkedServiceType = "AzureSqlDatabase",
///                     Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                 },
///                 DataMapperMappings = new[]
///                 {
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new() { },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "source/customer",
///                         TargetEntityName = "dbo.customer",
///                     },
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new[]
///                             {
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReferences = new[]
///                                     {
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "lookup",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "EmpName",
///                                         },
///                                     },
///                                     Expression = "upper(EmpName)",
///                                     FunctionName = "upper",
///                                     Name = "Name",
///                                     Type = AzureNative.DataFactory.MappingType.Derived,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "lookup",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "EmpId",
///                                     },
///                                     FunctionName = "",
///                                     Name = "PersonID",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                             },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "lookup",
///                         TargetEntityName = "dbo.data_source_table",
///                     },
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new() { },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "source/employee",
///                         TargetEntityName = "dbo.employee",
///                     },
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new[]
///                             {
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReferences = new[]
///                                     {
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "source/justSchema",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "CustAddres",
///                                         },
///                                     },
///                                     Expression = "trim(CustAddres)",
///                                     FunctionName = "trim",
///                                     Name = "CustAddres",
///                                     Type = AzureNative.DataFactory.MappingType.Derived,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/justSchema",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustDepLoc",
///                                     },
///                                     Name = "CustDepLoc",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReferences = new[]
///                                     {
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "source/justSchema",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "CustName",
///                                         },
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "source/justSchema",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "CustDepName",
///                                         },
///                                     },
///                                     Expression = "concat(CustName, \" -> \", CustDepName)",
///                                     FunctionName = "",
///                                     Name = "CustDepName",
///                                     Type = AzureNative.DataFactory.MappingType.Derived,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/justSchema",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustId",
///                                     },
///                                     FunctionName = "",
///                                     Name = "CustId",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/justSchema",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustName",
///                                     },
///                                     Name = "CustName",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                             },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "source/justSchema",
///                         TargetEntityName = "dbo.justSchema",
///                     },
///                 },
///                 Relationships = new() { },
///                 TargetEntities = new[]
///                 {
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "employee",
///                             },
///                         },
///                         Name = "dbo.employee",
///                         Schema = new() { },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "justSchema",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = true,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = true,
///                             },
///                         },
///                         Name = "dbo.justSchema",
///                         Schema = new() { },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "customer",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "dbo.customer",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "integer",
///                                 Name = "CustId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustAddres",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDeptName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustEmail",
///                             },
///                         },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "data_source_table",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "defaultToUpsert",
///                                 Value = false,
///                             },
///                         },
///                         Name = "dbo.data_source_table",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "integer",
///                                 Name = "PersonID",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "Name",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "timestamp",
///                                 Name = "LastModifytime",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewChangeDataCapture(ctx, "changeDataCapture", &datafactory.ChangeDataCaptureArgs{
/// 			AllowVNetOverride:     pulumi.Bool(false),
/// 			ChangeDataCaptureName: pulumi.String("exampleChangeDataCapture"),
/// 			Description:           pulumi.String("Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database with automapped and non-automapped mappings."),
/// 			FactoryName:           pulumi.String("exampleFactoryName"),
/// 			Policy: &datafactory.MapperPolicyArgs{
/// 				Mode: pulumi.String("Microbatch"),
/// 				Recurrence: &datafactory.MapperPolicyRecurrenceArgs{
/// 					Frequency: pulumi.String(datafactory.FrequencyTypeMinute),
/// 					Interval:  pulumi.Int(15),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			SourceConnectionsInfo: datafactory.MapperSourceConnectionsInfoArray{
/// 				&datafactory.MapperSourceConnectionsInfoArgs{
/// 					Connection: &datafactory.MapperConnectionArgs{
/// 						CommonDslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("allowSchemaDrift"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("inferDriftedColumnTypes"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("format"),
/// 								Value: pulumi.Any("delimited"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name: pulumi.String("dateFormats"),
/// 								Value: pulumi.Any{
/// 									"MM/dd/yyyy",
/// 									"dd/MM/yyyy",
/// 									"yyyy/MM/dd",
/// 									"MM-dd-yyyy",
/// 									"dd-MM-yyyy",
/// 									"yyyy-MM-dd",
/// 									"dd.MM.yyyy",
/// 									"MM.dd.yyyy",
/// 									"yyyy.MM.dd",
/// 								},
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name: pulumi.String("timestampFormats"),
/// 								Value: pulumi.Any{
/// 									"yyyyMMddHHmm",
/// 									"yyyyMMdd HHmm",
/// 									"yyyyMMddHHmmss",
/// 									"yyyyMMdd HHmmss",
/// 									"dd-MM-yyyy HH:mm:ss",
/// 									"dd-MM-yyyy HH:mm",
/// 									"yyyy-M-d H:m:s",
/// 									"yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
/// 									"yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
/// 									"yyyy-M-d\\'T\\'H:m:s",
/// 									"yyyy-MM-dd\\'T\\'HH:mm:ss",
/// 									"yyyy-MM-dd HH:mm:ss",
/// 									"yyyy-MM-dd HH:mm",
/// 									"yyyy.MM.dd HH:mm:ss",
/// 									"MM/dd/yyyy HH:mm:ss",
/// 									"M/d/yyyy H:m:s",
/// 									"yyyy/MM/dd HH:mm:ss",
/// 									"yyyy/M/d H:m:s",
/// 									"dd MMM yyyy HH:mm:ss",
/// 									"dd MMMM yyyy HH:mm:ss",
/// 									"d MMM yyyy H:m:s",
/// 									"d MMMM yyyy H:m:s",
/// 									"d-M-yyyy H:m:s",
/// 									"d-M-yyyy H:m",
/// 									"yyyy-M-d H:m",
/// 									"MM/dd/yyyy HH:mm",
/// 									"M/d/yyyy H:m",
/// 									"yyyy/MM/dd HH:mm",
/// 									"yyyy/M/d H:m",
/// 									"dd MMMM yyyy HH:mm",
/// 									"dd MMM yyyy HH:mm",
/// 									"d MMMM yyyy H:m",
/// 									"d MMM yyyy H:m",
/// 									"MM-dd-yyyy hh:mm:ss a",
/// 									"MM-dd-yyyy HH:mm:ss",
/// 									"MM/dd/yyyy hh:mm:ss a",
/// 									"yyyy.MM.dd hh:mm:ss a",
/// 									"MM/dd/yyyy",
/// 									"dd/MM/yyyy",
/// 									"yyyy/MM/dd",
/// 									"MM-dd-yyyy",
/// 									"dd-MM-yyyy",
/// 									"yyyy-MM-dd",
/// 									"dd.MM.yyyy",
/// 									"MM.dd.yyyy",
/// 									"yyyy.MM.dd",
/// 								},
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("enableCdc"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("skipInitialLoad"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("columnNamesAsHeader"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("columnDelimiter"),
/// 								Value: pulumi.Any(","),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("escapeChar"),
/// 								Value: pulumi.Any("\\\\"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("quoteChar"),
/// 								Value: pulumi.Any("\\\""),
/// 							},
/// 						},
/// 						IsInlineDataset: pulumi.Bool(true),
/// 						LinkedService: &datafactory.LinkedServiceReferenceArgs{
/// 							ReferenceName: pulumi.String("amjaAdls03"),
/// 							Type:          pulumi.String(datafactory.TypeLinkedServiceReference),
/// 						},
/// 						LinkedServiceType: pulumi.String("AzureBlobFS"),
/// 						Type:              pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 					},
/// 					SourceEntities: datafactory.MapperTableArray{
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("folderPath"),
/// 									Value: pulumi.Any("customer"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("source/customer"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("short"),
/// 									Name:     pulumi.String("CustId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustAddres"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepLoc"),
/// 								},
/// 							},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("folderPath"),
/// 									Value: pulumi.Any("employee"),
/// 								},
/// 							},
/// 							Name:   pulumi.String("source/employee"),
/// 							Schema: datafactory.MapperTableSchemaArray{},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("lookup"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("lookup"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("lookup"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("short"),
/// 									Name:     pulumi.String("EmpId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("EmpName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("HomeAddress"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("OfficeAddress"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("integer"),
/// 									Name:     pulumi.String("EmpPhoneNumber"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("DepName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("DepLoc"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("double"),
/// 									Name:     pulumi.String("DecimalCol"),
/// 								},
/// 							},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("folderPath"),
/// 									Value: pulumi.Any("justSchema"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("source/justSchema"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustAddres"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepLoc"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TargetConnectionsInfo: datafactory.MapperTargetConnectionsInfoArray{
/// 				&datafactory.MapperTargetConnectionsInfoArgs{
/// 					Connection: &datafactory.MapperConnectionArgs{
/// 						CommonDslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("allowSchemaDrift"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("inferDriftedColumnTypes"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("format"),
/// 								Value: pulumi.Any("table"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("store"),
/// 								Value: pulumi.Any("sqlserver"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("databaseType"),
/// 								Value: pulumi.Any("databaseType"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("database"),
/// 								Value: pulumi.Any("database"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("deletable"),
/// 								Value: pulumi.Any(false),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("insertable"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("updateable"),
/// 								Value: pulumi.Any(false),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("upsertable"),
/// 								Value: pulumi.Any(false),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("skipDuplicateMapInputs"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("skipDuplicateMapOutputs"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 						},
/// 						IsInlineDataset: pulumi.Bool(true),
/// 						LinkedService: &datafactory.LinkedServiceReferenceArgs{
/// 							ReferenceName: pulumi.String("amjaSql"),
/// 							Type:          pulumi.String(datafactory.TypeLinkedServiceReference),
/// 						},
/// 						LinkedServiceType: pulumi.String("AzureSqlDatabase"),
/// 						Type:              pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 					},
/// 					DataMapperMappings: datafactory.DataMapperMappingArray{
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("source/customer"),
/// 							TargetEntityName: pulumi.String("dbo.customer"),
/// 						},
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReferences: datafactory.MapperAttributeReferenceArray{
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("lookup"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("EmpName"),
/// 											},
/// 										},
/// 										Expression:   pulumi.String("upper(EmpName)"),
/// 										FunctionName: pulumi.String("upper"),
/// 										Name:         pulumi.String("Name"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDerived),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("lookup"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("EmpId"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("PersonID"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 								},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("lookup"),
/// 							TargetEntityName: pulumi.String("dbo.data_source_table"),
/// 						},
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("source/employee"),
/// 							TargetEntityName: pulumi.String("dbo.employee"),
/// 						},
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReferences: datafactory.MapperAttributeReferenceArray{
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("source/justSchema"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("CustAddres"),
/// 											},
/// 										},
/// 										Expression:   pulumi.String("trim(CustAddres)"),
/// 										FunctionName: pulumi.String("trim"),
/// 										Name:         pulumi.String("CustAddres"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDerived),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/justSchema"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustDepLoc"),
/// 										},
/// 										Name: pulumi.String("CustDepLoc"),
/// 										Type: pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReferences: datafactory.MapperAttributeReferenceArray{
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("source/justSchema"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("CustName"),
/// 											},
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("source/justSchema"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("CustDepName"),
/// 											},
/// 										},
/// 										Expression:   pulumi.String("concat(CustName, \" -> \", CustDepName)"),
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustDepName"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDerived),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/justSchema"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustId"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustId"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/justSchema"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustName"),
/// 										},
/// 										Name: pulumi.String("CustName"),
/// 										Type: pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 								},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("source/justSchema"),
/// 							TargetEntityName: pulumi.String("dbo.justSchema"),
/// 						},
/// 					},
/// 					Relationships: pulumi.Array{},
/// 					TargetEntities: datafactory.MapperTableArray{
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("employee"),
/// 								},
/// 							},
/// 							Name:   pulumi.String("dbo.employee"),
/// 							Schema: datafactory.MapperTableSchemaArray{},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("justSchema"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(true),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(true),
/// 								},
/// 							},
/// 							Name:   pulumi.String("dbo.justSchema"),
/// 							Schema: datafactory.MapperTableSchemaArray{},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("customer"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("dbo.customer"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("integer"),
/// 									Name:     pulumi.String("CustId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustAddres"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDeptName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustEmail"),
/// 								},
/// 							},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("data_source_table"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("defaultToUpsert"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("dbo.data_source_table"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("integer"),
/// 									Name:     pulumi.String("PersonID"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("Name"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("timestamp"),
/// 									Name:     pulumi.String("LastModifytime"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datafactory_changedatacapture" "changeDataCapture" {
///   allow_v_net_override     = false
///   change_data_capture_name = "exampleChangeDataCapture"
///   description              = "Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database with automapped and non-automapped mappings."
///   factory_name             = "exampleFactoryName"
///   policy = {
///     mode = "Microbatch"
///     recurrence = {
///       frequency = "Minute"
///       interval  = 15
///     }
///   }
///   resource_group_name = "exampleResourceGroup"
///   source_connections_info {
///     connection = {
///       common_dsl_connector_properties = [{
///         "name"  = "allowSchemaDrift"
///         "value" = true
///         }, {
///         "name"  = "inferDriftedColumnTypes"
///         "value" = true
///         }, {
///         "name"  = "format"
///         "value" = "delimited"
///         }, {
///         "name"  = "dateFormats"
///         "value" = ["MM/dd/yyyy", "dd/MM/yyyy", "yyyy/MM/dd", "MM-dd-yyyy", "dd-MM-yyyy", "yyyy-MM-dd", "dd.MM.yyyy", "MM.dd.yyyy", "yyyy.MM.dd"]
///         }, {
///         "name"  = "timestampFormats"
///         "value" = ["yyyyMMddHHmm", "yyyyMMdd HHmm", "yyyyMMddHHmmss", "yyyyMMdd HHmmss", "dd-MM-yyyy HH:mm:ss", "dd-MM-yyyy HH:mm", "yyyy-M-d H:m:s", "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'", "yyyy-M-d\\'T\\'H:m:s\\'Z\\'", "yyyy-M-d\\'T\\'H:m:s", "yyyy-MM-dd\\'T\\'HH:mm:ss", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy.MM.dd HH:mm:ss", "MM/dd/yyyy HH:mm:ss", "M/d/yyyy H:m:s", "yyyy/MM/dd HH:mm:ss", "yyyy/M/d H:m:s", "dd MMM yyyy HH:mm:ss", "dd MMMM yyyy HH:mm:ss", "d MMM yyyy H:m:s", "d MMMM yyyy H:m:s", "d-M-yyyy H:m:s", "d-M-yyyy H:m", "yyyy-M-d H:m", "MM/dd/yyyy HH:mm", "M/d/yyyy H:m", "yyyy/MM/dd HH:mm", "yyyy/M/d H:m", "dd MMMM yyyy HH:mm", "dd MMM yyyy HH:mm", "d MMMM yyyy H:m", "d MMM yyyy H:m", "MM-dd-yyyy hh:mm:ss a", "MM-dd-yyyy HH:mm:ss", "MM/dd/yyyy hh:mm:ss a", "yyyy.MM.dd hh:mm:ss a", "MM/dd/yyyy", "dd/MM/yyyy", "yyyy/MM/dd", "MM-dd-yyyy", "dd-MM-yyyy", "yyyy-MM-dd", "dd.MM.yyyy", "MM.dd.yyyy", "yyyy.MM.dd"]
///         }, {
///         "name"  = "enableCdc"
///         "value" = true
///         }, {
///         "name"  = "skipInitialLoad"
///         "value" = true
///         }, {
///         "name"  = "columnNamesAsHeader"
///         "value" = true
///         }, {
///         "name"  = "columnDelimiter"
///         "value" = ","
///         }, {
///         "name"  = "escapeChar"
///         "value" = "\\\\"
///         }, {
///         "name"  = "quoteChar"
///         "value" = "\\\""
///       }]
///       is_inline_dataset = true
///       linked_service = {
///         reference_name = "amjaAdls03"
///         type           = "LinkedServiceReference"
///       }
///       linked_service_type = "AzureBlobFS"
///       type                = "linkedservicetype"
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "folderPath"
///         value = "customer"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "source/customer"
///       schema {
///         data_type = "short"
///         name      = "CustId"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustAddres"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepLoc"
///       }
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "folderPath"
///         value = "employee"
///       }
///       name = "source/employee"
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "lookup"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "lookup"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "lookup"
///       schema {
///         data_type = "short"
///         name      = "EmpId"
///       }
///       schema {
///         data_type = "string"
///         name      = "EmpName"
///       }
///       schema {
///         data_type = "string"
///         name      = "HomeAddress"
///       }
///       schema {
///         data_type = "string"
///         name      = "OfficeAddress"
///       }
///       schema {
///         data_type = "integer"
///         name      = "EmpPhoneNumber"
///       }
///       schema {
///         data_type = "string"
///         name      = "DepName"
///       }
///       schema {
///         data_type = "string"
///         name      = "DepLoc"
///       }
///       schema {
///         data_type = "double"
///         name      = "DecimalCol"
///       }
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "folderPath"
///         value = "justSchema"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "source/justSchema"
///       schema {
///         data_type = "string"
///         name      = "CustId"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustAddres"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepLoc"
///       }
///     }
///   }
///   target_connections_info {
///     connection = {
///       common_dsl_connector_properties = [{
///         "name"  = "allowSchemaDrift"
///         "value" = true
///         }, {
///         "name"  = "inferDriftedColumnTypes"
///         "value" = true
///         }, {
///         "name"  = "format"
///         "value" = "table"
///         }, {
///         "name"  = "store"
///         "value" = "sqlserver"
///         }, {
///         "name"  = "databaseType"
///         "value" = "databaseType"
///         }, {
///         "name"  = "database"
///         "value" = "database"
///         }, {
///         "name"  = "deletable"
///         "value" = false
///         }, {
///         "name"  = "insertable"
///         "value" = true
///         }, {
///         "name"  = "updateable"
///         "value" = false
///         }, {
///         "name"  = "upsertable"
///         "value" = false
///         }, {
///         "name"  = "skipDuplicateMapInputs"
///         "value" = true
///         }, {
///         "name"  = "skipDuplicateMapOutputs"
///         "value" = true
///       }]
///       is_inline_dataset = true
///       linked_service = {
///         reference_name = "amjaSql"
///         type           = "LinkedServiceReference"
///       }
///       linked_service_type = "AzureSqlDatabase"
///       type                = "linkedservicetype"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = []
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "source/customer"
///       target_entity_name = "dbo.customer"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = [{
///           "attributeReferences" = [{
///             "entity" = "lookup"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "EmpName"
///           }]
///           "expression"   = "upper(EmpName)"
///           "functionName" = "upper"
///           "name"         = "Name"
///           "type"         = "Derived"
///           }, {
///           "attributeReference" = {
///             "entity" = "lookup"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "EmpId"
///           }
///           "functionName" = ""
///           "name"         = "PersonID"
///           "type"         = "Direct"
///         }]
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "lookup"
///       target_entity_name = "dbo.data_source_table"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = []
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "source/employee"
///       target_entity_name = "dbo.employee"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = [{
///           "attributeReferences" = [{
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustAddres"
///           }]
///           "expression"   = "trim(CustAddres)"
///           "functionName" = "trim"
///           "name"         = "CustAddres"
///           "type"         = "Derived"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustDepLoc"
///           }
///           "name" = "CustDepLoc"
///           "type" = "Direct"
///           }, {
///           "attributeReferences" = [{
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustName"
///             }, {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustDepName"
///           }]
///           "expression"   = "concat(CustName, \" -> \", CustDepName)"
///           "functionName" = ""
///           "name"         = "CustDepName"
///           "type"         = "Derived"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustId"
///           }
///           "functionName" = ""
///           "name"         = "CustId"
///           "type"         = "Direct"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustName"
///           }
///           "name" = "CustName"
///           "type" = "Direct"
///         }]
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "source/justSchema"
///       target_entity_name = "dbo.justSchema"
///     }
///     relationships = []
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "employee"
///       }
///       name = "dbo.employee"
///     }
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "justSchema"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = true
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = true
///       }
///       name = "dbo.justSchema"
///     }
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "customer"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "dbo.customer"
///       schema {
///         data_type = "integer"
///         name      = "CustId"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustAddres"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDeptName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustEmail"
///       }
///     }
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "data_source_table"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "defaultToUpsert"
///         value = false
///       }
///       name = "dbo.data_source_table"
///       schema {
///         data_type = "integer"
///         name      = "PersonID"
///       }
///       schema {
///         data_type = "string"
///         name      = "Name"
///       }
///       schema {
///         data_type = "timestamp"
///         name      = "LastModifytime"
///       }
///     }
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datafactory.ChangeDataCapture;
/// import com.pulumi.azurenative.datafactory.ChangeDataCaptureArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperPolicyArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperPolicyRecurrenceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperSourceConnectionsInfoArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperConnectionArgs;
/// import com.pulumi.azurenative.datafactory.inputs.LinkedServiceReferenceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperTargetConnectionsInfoArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var changeDataCapture = new ChangeDataCapture("changeDataCapture", ChangeDataCaptureArgs.builder()
///             .allowVNetOverride(false)
///             .changeDataCaptureName("exampleChangeDataCapture")
///             .description("Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database with automapped and non-automapped mappings.")
///             .factoryName("exampleFactoryName")
///             .policy(MapperPolicyArgs.builder()
///                 .mode("Microbatch")
///                 .recurrence(MapperPolicyRecurrenceArgs.builder()
///                     .frequency("Minute")
///                     .interval(15)
///                     .build())
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
///             .sourceConnectionsInfo(MapperSourceConnectionsInfoArgs.builder()
///                 .connection(MapperConnectionArgs.builder()
///                     .commonDslConnectorProperties(
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("allowSchemaDrift")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("inferDriftedColumnTypes")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("format")
///                             .value("delimited")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("dateFormats")
///                             .value(
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("timestampFormats")
///                             .value(
///                                 "yyyyMMddHHmm",
///                                 "yyyyMMdd HHmm",
///                                 "yyyyMMddHHmmss",
///                                 "yyyyMMdd HHmmss",
///                                 "dd-MM-yyyy HH:mm:ss",
///                                 "dd-MM-yyyy HH:mm",
///                                 "yyyy-M-d H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm",
///                                 "yyyy.MM.dd HH:mm:ss",
///                                 "MM/dd/yyyy HH:mm:ss",
///                                 "M/d/yyyy H:m:s",
///                                 "yyyy/MM/dd HH:mm:ss",
///                                 "yyyy/M/d H:m:s",
///                                 "dd MMM yyyy HH:mm:ss",
///                                 "dd MMMM yyyy HH:mm:ss",
///                                 "d MMM yyyy H:m:s",
///                                 "d MMMM yyyy H:m:s",
///                                 "d-M-yyyy H:m:s",
///                                 "d-M-yyyy H:m",
///                                 "yyyy-M-d H:m",
///                                 "MM/dd/yyyy HH:mm",
///                                 "M/d/yyyy H:m",
///                                 "yyyy/MM/dd HH:mm",
///                                 "yyyy/M/d H:m",
///                                 "dd MMMM yyyy HH:mm",
///                                 "dd MMM yyyy HH:mm",
///                                 "d MMMM yyyy H:m",
///                                 "d MMM yyyy H:m",
///                                 "MM-dd-yyyy hh:mm:ss a",
///                                 "MM-dd-yyyy HH:mm:ss",
///                                 "MM/dd/yyyy hh:mm:ss a",
///                                 "yyyy.MM.dd hh:mm:ss a",
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("enableCdc")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("skipInitialLoad")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("columnNamesAsHeader")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("columnDelimiter")
///                             .value(",")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("escapeChar")
///                             .value("\\\\")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("quoteChar")
///                             .value("\\\"")
///                             .build())
///                     .isInlineDataset(true)
///                     .linkedService(LinkedServiceReferenceArgs.builder()
///                         .referenceName("amjaAdls03")
///                         .type("LinkedServiceReference")
///                         .build())
///                     .linkedServiceType("AzureBlobFS")
///                     .type("linkedservicetype")
///                     .build())
///                 .sourceEntities(
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("folderPath")
///                                 .value("customer")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("source/customer")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("short")
///                                 .name("CustId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustAddres")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepLoc")
///                                 .build())
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("folderPath")
///                                 .value("employee")
///                                 .build())
///                         .name("source/employee")
///                         .schema()
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("lookup")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("lookup")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("lookup")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("short")
///                                 .name("EmpId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("EmpName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("HomeAddress")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("OfficeAddress")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("integer")
///                                 .name("EmpPhoneNumber")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("DepName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("DepLoc")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("double")
///                                 .name("DecimalCol")
///                                 .build())
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("folderPath")
///                                 .value("justSchema")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("source/justSchema")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustAddres")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepLoc")
///                                 .build())
///                         .build())
///                 .build())
///             .targetConnectionsInfo(MapperTargetConnectionsInfoArgs.builder()
///                 .connection(MapperConnectionArgs.builder()
///                     .commonDslConnectorProperties(
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("allowSchemaDrift")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("inferDriftedColumnTypes")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("format")
///                             .value("table")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("store")
///                             .value("sqlserver")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("databaseType")
///                             .value("databaseType")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("database")
///                             .value("database")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("deletable")
///                             .value(false)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("insertable")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("updateable")
///                             .value(false)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("upsertable")
///                             .value(false)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("skipDuplicateMapInputs")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("skipDuplicateMapOutputs")
///                             .value(true)
///                             .build())
///                     .isInlineDataset(true)
///                     .linkedService(LinkedServiceReferenceArgs.builder()
///                         .referenceName("amjaSql")
///                         .type("LinkedServiceReference")
///                         .build())
///                     .linkedServiceType("AzureSqlDatabase")
///                     .type("linkedservicetype")
///                     .build())
///                 .dataMapperMappings(
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings()
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("source/customer")
///                         .targetEntityName("dbo.customer")
///                         .build(),
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings(
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReferences(MapperAttributeReferenceArgs.builder()
///                                         .entity("lookup")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("EmpName")
///                                         .build())
///                                     .expression("upper(EmpName)")
///                                     .functionName("upper")
///                                     .name("Name")
///                                     .type("Derived")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("lookup")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("EmpId")
///                                         .build())
///                                     .functionName("")
///                                     .name("PersonID")
///                                     .type("Direct")
///                                     .build())
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("lookup")
///                         .targetEntityName("dbo.data_source_table")
///                         .build(),
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings()
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("source/employee")
///                         .targetEntityName("dbo.employee")
///                         .build(),
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings(
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReferences(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustAddres")
///                                         .build())
///                                     .expression("trim(CustAddres)")
///                                     .functionName("trim")
///                                     .name("CustAddres")
///                                     .type("Derived")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustDepLoc")
///                                         .build())
///                                     .name("CustDepLoc")
///                                     .type("Direct")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReferences(
///                                         MapperAttributeReferenceArgs.builder()
///                                             .entity("source/justSchema")
///                                             .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                                 .connectionName("amjaAdls03")
///                                                 .type("linkedservicetype")
///                                                 .build())
///                                             .name("CustName")
///                                             .build(),
///                                         MapperAttributeReferenceArgs.builder()
///                                             .entity("source/justSchema")
///                                             .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                                 .connectionName("amjaAdls03")
///                                                 .type("linkedservicetype")
///                                                 .build())
///                                             .name("CustDepName")
///                                             .build())
///                                     .expression("concat(CustName, \" -> \", CustDepName)")
///                                     .functionName("")
///                                     .name("CustDepName")
///                                     .type("Derived")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustId")
///                                         .build())
///                                     .functionName("")
///                                     .name("CustId")
///                                     .type("Direct")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustName")
///                                         .build())
///                                     .name("CustName")
///                                     .type("Direct")
///                                     .build())
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("source/justSchema")
///                         .targetEntityName("dbo.justSchema")
///                         .build())
///                 .relationships()
///                 .targetEntities(
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("employee")
///                                 .build())
///                         .name("dbo.employee")
///                         .schema()
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("justSchema")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(true)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(true)
///                                 .build())
///                         .name("dbo.justSchema")
///                         .schema()
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("customer")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("dbo.customer")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("integer")
///                                 .name("CustId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustAddres")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDeptName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustEmail")
///                                 .build())
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("data_source_table")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("defaultToUpsert")
///                                 .value(false)
///                                 .build())
///                         .name("dbo.data_source_table")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("integer")
///                                 .name("PersonID")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("Name")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("timestamp")
///                                 .name("LastModifytime")
///                                 .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const changeDataCapture = new azure_native.datafactory.ChangeDataCapture("changeDataCapture", {
///     allowVNetOverride: false,
///     changeDataCaptureName: "exampleChangeDataCapture",
///     description: "Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database with automapped and non-automapped mappings.",
///     factoryName: "exampleFactoryName",
///     policy: {
///         mode: "Microbatch",
///         recurrence: {
///             frequency: azure_native.datafactory.FrequencyType.Minute,
///             interval: 15,
///         },
///     },
///     resourceGroupName: "exampleResourceGroup",
///     sourceConnectionsInfo: [{
///         connection: {
///             commonDslConnectorProperties: [
///                 {
///                     name: "allowSchemaDrift",
///                     value: true,
///                 },
///                 {
///                     name: "inferDriftedColumnTypes",
///                     value: true,
///                 },
///                 {
///                     name: "format",
///                     value: "delimited",
///                 },
///                 {
///                     name: "dateFormats",
///                     value: [
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     name: "timestampFormats",
///                     value: [
///                         "yyyyMMddHHmm",
///                         "yyyyMMdd HHmm",
///                         "yyyyMMddHHmmss",
///                         "yyyyMMdd HHmmss",
///                         "dd-MM-yyyy HH:mm:ss",
///                         "dd-MM-yyyy HH:mm",
///                         "yyyy-M-d H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                         "yyyy-MM-dd HH:mm:ss",
///                         "yyyy-MM-dd HH:mm",
///                         "yyyy.MM.dd HH:mm:ss",
///                         "MM/dd/yyyy HH:mm:ss",
///                         "M/d/yyyy H:m:s",
///                         "yyyy/MM/dd HH:mm:ss",
///                         "yyyy/M/d H:m:s",
///                         "dd MMM yyyy HH:mm:ss",
///                         "dd MMMM yyyy HH:mm:ss",
///                         "d MMM yyyy H:m:s",
///                         "d MMMM yyyy H:m:s",
///                         "d-M-yyyy H:m:s",
///                         "d-M-yyyy H:m",
///                         "yyyy-M-d H:m",
///                         "MM/dd/yyyy HH:mm",
///                         "M/d/yyyy H:m",
///                         "yyyy/MM/dd HH:mm",
///                         "yyyy/M/d H:m",
///                         "dd MMMM yyyy HH:mm",
///                         "dd MMM yyyy HH:mm",
///                         "d MMMM yyyy H:m",
///                         "d MMM yyyy H:m",
///                         "MM-dd-yyyy hh:mm:ss a",
///                         "MM-dd-yyyy HH:mm:ss",
///                         "MM/dd/yyyy hh:mm:ss a",
///                         "yyyy.MM.dd hh:mm:ss a",
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     name: "enableCdc",
///                     value: true,
///                 },
///                 {
///                     name: "skipInitialLoad",
///                     value: true,
///                 },
///                 {
///                     name: "columnNamesAsHeader",
///                     value: true,
///                 },
///                 {
///                     name: "columnDelimiter",
///                     value: ",",
///                 },
///                 {
///                     name: "escapeChar",
///                     value: "\\\\",
///                 },
///                 {
///                     name: "quoteChar",
///                     value: "\\\"",
///                 },
///             ],
///             isInlineDataset: true,
///             linkedService: {
///                 referenceName: "amjaAdls03",
///                 type: azure_native.datafactory.Type.LinkedServiceReference,
///             },
///             linkedServiceType: "AzureBlobFS",
///             type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///         },
///         sourceEntities: [
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "source",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "source",
///                     },
///                     {
///                         name: "folderPath",
///                         value: "customer",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "source/customer",
///                 schema: [
///                     {
///                         dataType: "short",
///                         name: "CustId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustAddres",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepLoc",
///                     },
///                 ],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "source",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "source",
///                     },
///                     {
///                         name: "folderPath",
///                         value: "employee",
///                     },
///                 ],
///                 name: "source/employee",
///                 schema: [],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "lookup",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "lookup",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "lookup",
///                 schema: [
///                     {
///                         dataType: "short",
///                         name: "EmpId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "EmpName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "HomeAddress",
///                     },
///                     {
///                         dataType: "string",
///                         name: "OfficeAddress",
///                     },
///                     {
///                         dataType: "integer",
///                         name: "EmpPhoneNumber",
///                     },
///                     {
///                         dataType: "string",
///                         name: "DepName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "DepLoc",
///                     },
///                     {
///                         dataType: "double",
///                         name: "DecimalCol",
///                     },
///                 ],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "source",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "source",
///                     },
///                     {
///                         name: "folderPath",
///                         value: "justSchema",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "source/justSchema",
///                 schema: [
///                     {
///                         dataType: "string",
///                         name: "CustId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustAddres",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepLoc",
///                     },
///                 ],
///             },
///         ],
///     }],
///     targetConnectionsInfo: [{
///         connection: {
///             commonDslConnectorProperties: [
///                 {
///                     name: "allowSchemaDrift",
///                     value: true,
///                 },
///                 {
///                     name: "inferDriftedColumnTypes",
///                     value: true,
///                 },
///                 {
///                     name: "format",
///                     value: "table",
///                 },
///                 {
///                     name: "store",
///                     value: "sqlserver",
///                 },
///                 {
///                     name: "databaseType",
///                     value: "databaseType",
///                 },
///                 {
///                     name: "database",
///                     value: "database",
///                 },
///                 {
///                     name: "deletable",
///                     value: false,
///                 },
///                 {
///                     name: "insertable",
///                     value: true,
///                 },
///                 {
///                     name: "updateable",
///                     value: false,
///                 },
///                 {
///                     name: "upsertable",
///                     value: false,
///                 },
///                 {
///                     name: "skipDuplicateMapInputs",
///                     value: true,
///                 },
///                 {
///                     name: "skipDuplicateMapOutputs",
///                     value: true,
///                 },
///             ],
///             isInlineDataset: true,
///             linkedService: {
///                 referenceName: "amjaSql",
///                 type: azure_native.datafactory.Type.LinkedServiceReference,
///             },
///             linkedServiceType: "AzureSqlDatabase",
///             type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///         },
///         dataMapperMappings: [
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "source/customer",
///                 targetEntityName: "dbo.customer",
///             },
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [
///                         {
///                             attributeReferences: [{
///                                 entity: "lookup",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "EmpName",
///                             }],
///                             expression: "upper(EmpName)",
///                             functionName: "upper",
///                             name: "Name",
///                             type: azure_native.datafactory.MappingType.Derived,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "lookup",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "EmpId",
///                             },
///                             functionName: "",
///                             name: "PersonID",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                     ],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "lookup",
///                 targetEntityName: "dbo.data_source_table",
///             },
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "source/employee",
///                 targetEntityName: "dbo.employee",
///             },
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [
///                         {
///                             attributeReferences: [{
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustAddres",
///                             }],
///                             expression: "trim(CustAddres)",
///                             functionName: "trim",
///                             name: "CustAddres",
///                             type: azure_native.datafactory.MappingType.Derived,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustDepLoc",
///                             },
///                             name: "CustDepLoc",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                         {
///                             attributeReferences: [
///                                 {
///                                     entity: "source/justSchema",
///                                     entityConnectionReference: {
///                                         connectionName: "amjaAdls03",
///                                         type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                     },
///                                     name: "CustName",
///                                 },
///                                 {
///                                     entity: "source/justSchema",
///                                     entityConnectionReference: {
///                                         connectionName: "amjaAdls03",
///                                         type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                     },
///                                     name: "CustDepName",
///                                 },
///                             ],
///                             expression: "concat(CustName, \" -> \", CustDepName)",
///                             functionName: "",
///                             name: "CustDepName",
///                             type: azure_native.datafactory.MappingType.Derived,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustId",
///                             },
///                             functionName: "",
///                             name: "CustId",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustName",
///                             },
///                             name: "CustName",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                     ],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "source/justSchema",
///                 targetEntityName: "dbo.justSchema",
///             },
///         ],
///         relationships: [],
///         targetEntities: [
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "employee",
///                     },
///                 ],
///                 name: "dbo.employee",
///                 schema: [],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "justSchema",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: true,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: true,
///                     },
///                 ],
///                 name: "dbo.justSchema",
///                 schema: [],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "customer",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "dbo.customer",
///                 schema: [
///                     {
///                         dataType: "integer",
///                         name: "CustId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustAddres",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDeptName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustEmail",
///                     },
///                 ],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "data_source_table",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                     {
///                         name: "defaultToUpsert",
///                         value: false,
///                     },
///                 ],
///                 name: "dbo.data_source_table",
///                 schema: [
///                     {
///                         dataType: "integer",
///                         name: "PersonID",
///                     },
///                     {
///                         dataType: "string",
///                         name: "Name",
///                     },
///                     {
///                         dataType: "timestamp",
///                         name: "LastModifytime",
///                     },
///                 ],
///             },
///         ],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// change_data_capture = azure_native.datafactory.ChangeDataCapture("changeDataCapture",
///     allow_v_net_override=False,
///     change_data_capture_name="exampleChangeDataCapture",
///     description="Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database with automapped and non-automapped mappings.",
///     factory_name="exampleFactoryName",
///     policy={
///         "mode": "Microbatch",
///         "recurrence": {
///             "frequency": azure_native.datafactory.FrequencyType.MINUTE,
///             "interval": 15,
///         },
///     },
///     resource_group_name="exampleResourceGroup",
///     source_connections_info=[{
///         "connection": {
///             "common_dsl_connector_properties": [
///                 {
///                     "name": "allowSchemaDrift",
///                     "value": True,
///                 },
///                 {
///                     "name": "inferDriftedColumnTypes",
///                     "value": True,
///                 },
///                 {
///                     "name": "format",
///                     "value": "delimited",
///                 },
///                 {
///                     "name": "dateFormats",
///                     "value": [
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     "name": "timestampFormats",
///                     "value": [
///                         "yyyyMMddHHmm",
///                         "yyyyMMdd HHmm",
///                         "yyyyMMddHHmmss",
///                         "yyyyMMdd HHmmss",
///                         "dd-MM-yyyy HH:mm:ss",
///                         "dd-MM-yyyy HH:mm",
///                         "yyyy-M-d H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                         "yyyy-MM-dd HH:mm:ss",
///                         "yyyy-MM-dd HH:mm",
///                         "yyyy.MM.dd HH:mm:ss",
///                         "MM/dd/yyyy HH:mm:ss",
///                         "M/d/yyyy H:m:s",
///                         "yyyy/MM/dd HH:mm:ss",
///                         "yyyy/M/d H:m:s",
///                         "dd MMM yyyy HH:mm:ss",
///                         "dd MMMM yyyy HH:mm:ss",
///                         "d MMM yyyy H:m:s",
///                         "d MMMM yyyy H:m:s",
///                         "d-M-yyyy H:m:s",
///                         "d-M-yyyy H:m",
///                         "yyyy-M-d H:m",
///                         "MM/dd/yyyy HH:mm",
///                         "M/d/yyyy H:m",
///                         "yyyy/MM/dd HH:mm",
///                         "yyyy/M/d H:m",
///                         "dd MMMM yyyy HH:mm",
///                         "dd MMM yyyy HH:mm",
///                         "d MMMM yyyy H:m",
///                         "d MMM yyyy H:m",
///                         "MM-dd-yyyy hh:mm:ss a",
///                         "MM-dd-yyyy HH:mm:ss",
///                         "MM/dd/yyyy hh:mm:ss a",
///                         "yyyy.MM.dd hh:mm:ss a",
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     "name": "enableCdc",
///                     "value": True,
///                 },
///                 {
///                     "name": "skipInitialLoad",
///                     "value": True,
///                 },
///                 {
///                     "name": "columnNamesAsHeader",
///                     "value": True,
///                 },
///                 {
///                     "name": "columnDelimiter",
///                     "value": ",",
///                 },
///                 {
///                     "name": "escapeChar",
///                     "value": "\\\\",
///                 },
///                 {
///                     "name": "quoteChar",
///                     "value": "\\\"",
///                 },
///             ],
///             "is_inline_dataset": True,
///             "linked_service": {
///                 "reference_name": "amjaAdls03",
///                 "type": azure_native.datafactory.Type.LINKED_SERVICE_REFERENCE,
///             },
///             "linked_service_type": "AzureBlobFS",
///             "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///         },
///         "source_entities": [
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "source",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "source",
///                     },
///                     {
///                         "name": "folderPath",
///                         "value": "customer",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "source/customer",
///                 "schema": [
///                     {
///                         "data_type": "short",
///                         "name": "CustId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustAddres",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepLoc",
///                     },
///                 ],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "source",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "source",
///                     },
///                     {
///                         "name": "folderPath",
///                         "value": "employee",
///                     },
///                 ],
///                 "name": "source/employee",
///                 "schema": [],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "lookup",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "lookup",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "lookup",
///                 "schema": [
///                     {
///                         "data_type": "short",
///                         "name": "EmpId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "EmpName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "HomeAddress",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "OfficeAddress",
///                     },
///                     {
///                         "data_type": "integer",
///                         "name": "EmpPhoneNumber",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "DepName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "DepLoc",
///                     },
///                     {
///                         "data_type": "double",
///                         "name": "DecimalCol",
///                     },
///                 ],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "source",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "source",
///                     },
///                     {
///                         "name": "folderPath",
///                         "value": "justSchema",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "source/justSchema",
///                 "schema": [
///                     {
///                         "data_type": "string",
///                         "name": "CustId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustAddres",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepLoc",
///                     },
///                 ],
///             },
///         ],
///     }],
///     target_connections_info=[{
///         "connection": {
///             "common_dsl_connector_properties": [
///                 {
///                     "name": "allowSchemaDrift",
///                     "value": True,
///                 },
///                 {
///                     "name": "inferDriftedColumnTypes",
///                     "value": True,
///                 },
///                 {
///                     "name": "format",
///                     "value": "table",
///                 },
///                 {
///                     "name": "store",
///                     "value": "sqlserver",
///                 },
///                 {
///                     "name": "databaseType",
///                     "value": "databaseType",
///                 },
///                 {
///                     "name": "database",
///                     "value": "database",
///                 },
///                 {
///                     "name": "deletable",
///                     "value": False,
///                 },
///                 {
///                     "name": "insertable",
///                     "value": True,
///                 },
///                 {
///                     "name": "updateable",
///                     "value": False,
///                 },
///                 {
///                     "name": "upsertable",
///                     "value": False,
///                 },
///                 {
///                     "name": "skipDuplicateMapInputs",
///                     "value": True,
///                 },
///                 {
///                     "name": "skipDuplicateMapOutputs",
///                     "value": True,
///                 },
///             ],
///             "is_inline_dataset": True,
///             "linked_service": {
///                 "reference_name": "amjaSql",
///                 "type": azure_native.datafactory.Type.LINKED_SERVICE_REFERENCE,
///             },
///             "linked_service_type": "AzureSqlDatabase",
///             "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///         },
///         "data_mapper_mappings": [
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "source/customer",
///                 "target_entity_name": "dbo.customer",
///             },
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [
///                         {
///                             "attribute_references": [{
///                                 "entity": "lookup",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "EmpName",
///                             }],
///                             "expression": "upper(EmpName)",
///                             "function_name": "upper",
///                             "name": "Name",
///                             "type": azure_native.datafactory.MappingType.DERIVED,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "lookup",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "EmpId",
///                             },
///                             "function_name": "",
///                             "name": "PersonID",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                     ],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "lookup",
///                 "target_entity_name": "dbo.data_source_table",
///             },
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "source/employee",
///                 "target_entity_name": "dbo.employee",
///             },
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [
///                         {
///                             "attribute_references": [{
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustAddres",
///                             }],
///                             "expression": "trim(CustAddres)",
///                             "function_name": "trim",
///                             "name": "CustAddres",
///                             "type": azure_native.datafactory.MappingType.DERIVED,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustDepLoc",
///                             },
///                             "name": "CustDepLoc",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                         {
///                             "attribute_references": [
///                                 {
///                                     "entity": "source/justSchema",
///                                     "entity_connection_reference": {
///                                         "connection_name": "amjaAdls03",
///                                         "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                     },
///                                     "name": "CustName",
///                                 },
///                                 {
///                                     "entity": "source/justSchema",
///                                     "entity_connection_reference": {
///                                         "connection_name": "amjaAdls03",
///                                         "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                     },
///                                     "name": "CustDepName",
///                                 },
///                             ],
///                             "expression": "concat(CustName, \" -> \", CustDepName)",
///                             "function_name": "",
///                             "name": "CustDepName",
///                             "type": azure_native.datafactory.MappingType.DERIVED,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustId",
///                             },
///                             "function_name": "",
///                             "name": "CustId",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustName",
///                             },
///                             "name": "CustName",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                     ],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "source/justSchema",
///                 "target_entity_name": "dbo.justSchema",
///             },
///         ],
///         "relationships": [],
///         "target_entities": [
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "employee",
///                     },
///                 ],
///                 "name": "dbo.employee",
///                 "schema": [],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "justSchema",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": True,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": True,
///                     },
///                 ],
///                 "name": "dbo.justSchema",
///                 "schema": [],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "customer",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "dbo.customer",
///                 "schema": [
///                     {
///                         "data_type": "integer",
///                         "name": "CustId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustAddres",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDeptName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustEmail",
///                     },
///                 ],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "data_source_table",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                     {
///                         "name": "defaultToUpsert",
///                         "value": False,
///                     },
///                 ],
///                 "name": "dbo.data_source_table",
///                 "schema": [
///                     {
///                         "data_type": "integer",
///                         "name": "PersonID",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "Name",
///                     },
///                     {
///                         "data_type": "timestamp",
///                         "name": "LastModifytime",
///                     },
///                 ],
///             },
///         ],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   changeDataCapture:
///     type: azure-native:datafactory:ChangeDataCapture
///     properties:
///       allowVNetOverride: false
///       changeDataCaptureName: exampleChangeDataCapture
///       description: Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database with automapped and non-automapped mappings.
///       factoryName: exampleFactoryName
///       policy:
///         mode: Microbatch
///         recurrence:
///           frequency: Minute
///           interval: 15
///       resourceGroupName: exampleResourceGroup
///       sourceConnectionsInfo:
///         - connection:
///             commonDslConnectorProperties:
///               - name: allowSchemaDrift
///                 value: true
///               - name: inferDriftedColumnTypes
///                 value: true
///               - name: format
///                 value: delimited
///               - name: dateFormats
///                 value:
///                   - MM/dd/yyyy
///                   - dd/MM/yyyy
///                   - yyyy/MM/dd
///                   - MM-dd-yyyy
///                   - dd-MM-yyyy
///                   - yyyy-MM-dd
///                   - dd.MM.yyyy
///                   - MM.dd.yyyy
///                   - yyyy.MM.dd
///               - name: timestampFormats
///                 value:
///                   - yyyyMMddHHmm
///                   - yyyyMMdd HHmm
///                   - yyyyMMddHHmmss
///                   - yyyyMMdd HHmmss
///                   - dd-MM-yyyy HH:mm:ss
///                   - dd-MM-yyyy HH:mm
///                   - yyyy-M-d H:m:s
///                   - yyyy-MM-dd\'T\'HH:mm:ss\'Z\'
///                   - yyyy-M-d\'T\'H:m:s\'Z\'
///                   - yyyy-M-d\'T\'H:m:s
///                   - yyyy-MM-dd\'T\'HH:mm:ss
///                   - yyyy-MM-dd HH:mm:ss
///                   - yyyy-MM-dd HH:mm
///                   - yyyy.MM.dd HH:mm:ss
///                   - MM/dd/yyyy HH:mm:ss
///                   - M/d/yyyy H:m:s
///                   - yyyy/MM/dd HH:mm:ss
///                   - yyyy/M/d H:m:s
///                   - dd MMM yyyy HH:mm:ss
///                   - dd MMMM yyyy HH:mm:ss
///                   - d MMM yyyy H:m:s
///                   - d MMMM yyyy H:m:s
///                   - d-M-yyyy H:m:s
///                   - d-M-yyyy H:m
///                   - yyyy-M-d H:m
///                   - MM/dd/yyyy HH:mm
///                   - M/d/yyyy H:m
///                   - yyyy/MM/dd HH:mm
///                   - yyyy/M/d H:m
///                   - dd MMMM yyyy HH:mm
///                   - dd MMM yyyy HH:mm
///                   - d MMMM yyyy H:m
///                   - d MMM yyyy H:m
///                   - MM-dd-yyyy hh:mm:ss a
///                   - MM-dd-yyyy HH:mm:ss
///                   - MM/dd/yyyy hh:mm:ss a
///                   - yyyy.MM.dd hh:mm:ss a
///                   - MM/dd/yyyy
///                   - dd/MM/yyyy
///                   - yyyy/MM/dd
///                   - MM-dd-yyyy
///                   - dd-MM-yyyy
///                   - yyyy-MM-dd
///                   - dd.MM.yyyy
///                   - MM.dd.yyyy
///                   - yyyy.MM.dd
///               - name: enableCdc
///                 value: true
///               - name: skipInitialLoad
///                 value: true
///               - name: columnNamesAsHeader
///                 value: true
///               - name: columnDelimiter
///                 value: ','
///               - name: escapeChar
///                 value: \\
///               - name: quoteChar
///                 value: \"
///             isInlineDataset: true
///             linkedService:
///               referenceName: amjaAdls03
///               type: LinkedServiceReference
///             linkedServiceType: AzureBlobFS
///             type: linkedservicetype
///           sourceEntities:
///             - dslConnectorProperties:
///                 - name: container
///                   value: source
///                 - name: fileSystem
///                   value: source
///                 - name: folderPath
///                   value: customer
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: source/customer
///               schema:
///                 - dataType: short
///                   name: CustId
///                 - dataType: string
///                   name: CustName
///                 - dataType: string
///                   name: CustAddres
///                 - dataType: string
///                   name: CustDepName
///                 - dataType: string
///                   name: CustDepLoc
///             - dslConnectorProperties:
///                 - name: container
///                   value: source
///                 - name: fileSystem
///                   value: source
///                 - name: folderPath
///                   value: employee
///               name: source/employee
///               schema: []
///             - dslConnectorProperties:
///                 - name: container
///                   value: lookup
///                 - name: fileSystem
///                   value: lookup
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: lookup
///               schema:
///                 - dataType: short
///                   name: EmpId
///                 - dataType: string
///                   name: EmpName
///                 - dataType: string
///                   name: HomeAddress
///                 - dataType: string
///                   name: OfficeAddress
///                 - dataType: integer
///                   name: EmpPhoneNumber
///                 - dataType: string
///                   name: DepName
///                 - dataType: string
///                   name: DepLoc
///                 - dataType: double
///                   name: DecimalCol
///             - dslConnectorProperties:
///                 - name: container
///                   value: source
///                 - name: fileSystem
///                   value: source
///                 - name: folderPath
///                   value: justSchema
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: source/justSchema
///               schema:
///                 - dataType: string
///                   name: CustId
///                 - dataType: string
///                   name: CustName
///                 - dataType: string
///                   name: CustAddres
///                 - dataType: string
///                   name: CustDepName
///                 - dataType: string
///                   name: CustDepLoc
///       targetConnectionsInfo:
///         - connection:
///             commonDslConnectorProperties:
///               - name: allowSchemaDrift
///                 value: true
///               - name: inferDriftedColumnTypes
///                 value: true
///               - name: format
///                 value: table
///               - name: store
///                 value: sqlserver
///               - name: databaseType
///                 value: databaseType
///               - name: database
///                 value: database
///               - name: deletable
///                 value: false
///               - name: insertable
///                 value: true
///               - name: updateable
///                 value: false
///               - name: upsertable
///                 value: false
///               - name: skipDuplicateMapInputs
///                 value: true
///               - name: skipDuplicateMapOutputs
///                 value: true
///             isInlineDataset: true
///             linkedService:
///               referenceName: amjaSql
///               type: LinkedServiceReference
///             linkedServiceType: AzureSqlDatabase
///             type: linkedservicetype
///           dataMapperMappings:
///             - attributeMappingInfo:
///                 attributeMappings: []
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: source/customer
///               targetEntityName: dbo.customer
///             - attributeMappingInfo:
///                 attributeMappings:
///                   - attributeReferences:
///                       - entity: lookup
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: EmpName
///                     expression: upper(EmpName)
///                     functionName: upper
///                     name: Name
///                     type: Derived
///                   - attributeReference:
///                       entity: lookup
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: EmpId
///                     functionName: ""
///                     name: PersonID
///                     type: Direct
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: lookup
///               targetEntityName: dbo.data_source_table
///             - attributeMappingInfo:
///                 attributeMappings: []
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: source/employee
///               targetEntityName: dbo.employee
///             - attributeMappingInfo:
///                 attributeMappings:
///                   - attributeReferences:
///                       - entity: source/justSchema
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: CustAddres
///                     expression: trim(CustAddres)
///                     functionName: trim
///                     name: CustAddres
///                     type: Derived
///                   - attributeReference:
///                       entity: source/justSchema
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustDepLoc
///                     name: CustDepLoc
///                     type: Direct
///                   - attributeReferences:
///                       - entity: source/justSchema
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: CustName
///                       - entity: source/justSchema
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: CustDepName
///                     expression: concat(CustName, " -> ", CustDepName)
///                     functionName: ""
///                     name: CustDepName
///                     type: Derived
///                   - attributeReference:
///                       entity: source/justSchema
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustId
///                     functionName: ""
///                     name: CustId
///                     type: Direct
///                   - attributeReference:
///                       entity: source/justSchema
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustName
///                     name: CustName
///                     type: Direct
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: source/justSchema
///               targetEntityName: dbo.justSchema
///           relationships: []
///           targetEntities:
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: employee
///               name: dbo.employee
///               schema: []
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: justSchema
///                 - name: allowSchemaDrift
///                   value: true
///                 - name: inferDriftedColumnTypes
///                   value: true
///               name: dbo.justSchema
///               schema: []
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: customer
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: dbo.customer
///               schema:
///                 - dataType: integer
///                   name: CustId
///                 - dataType: string
///                   name: CustName
///                 - dataType: string
///                   name: CustAddres
///                 - dataType: string
///                   name: CustDeptName
///                 - dataType: string
///                   name: CustEmail
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: data_source_table
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///                 - name: defaultToUpsert
///                   value: false
///               name: dbo.data_source_table
///               schema:
///                 - dataType: integer
///                   name: PersonID
///                 - dataType: string
///                   name: Name
///                 - dataType: timestamp
///                   name: LastModifytime
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ChangeDataCapture_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var changeDataCapture = new AzureNative.DataFactory.ChangeDataCapture("changeDataCapture", new()
///     {
///         AllowVNetOverride = false,
///         ChangeDataCaptureName = "exampleChangeDataCapture",
///         Description = "Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database. Updating table mappings.",
///         FactoryName = "exampleFactoryName",
///         Policy = new AzureNative.DataFactory.Inputs.MapperPolicyArgs
///         {
///             Mode = "Microbatch",
///             Recurrence = new AzureNative.DataFactory.Inputs.MapperPolicyRecurrenceArgs
///             {
///                 Frequency = AzureNative.DataFactory.FrequencyType.Minute,
///                 Interval = 15,
///             },
///         },
///         ResourceGroupName = "exampleResourceGroup",
///         SourceConnectionsInfo = new[]
///         {
///             new AzureNative.DataFactory.Inputs.MapperSourceConnectionsInfoArgs
///             {
///                 Connection = new AzureNative.DataFactory.Inputs.MapperConnectionArgs
///                 {
///                     CommonDslConnectorProperties = new[]
///                     {
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "allowSchemaDrift",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "inferDriftedColumnTypes",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "format",
///                             Value = "delimited",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "dateFormats",
///                             Value = new[]
///                             {
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd",
///                             },
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "timestampFormats",
///                             Value = new[]
///                             {
///                                 "yyyyMMddHHmm",
///                                 "yyyyMMdd HHmm",
///                                 "yyyyMMddHHmmss",
///                                 "yyyyMMdd HHmmss",
///                                 "dd-MM-yyyy HH:mm:ss",
///                                 "dd-MM-yyyy HH:mm",
///                                 "yyyy-M-d H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm",
///                                 "yyyy.MM.dd HH:mm:ss",
///                                 "MM/dd/yyyy HH:mm:ss",
///                                 "M/d/yyyy H:m:s",
///                                 "yyyy/MM/dd HH:mm:ss",
///                                 "yyyy/M/d H:m:s",
///                                 "dd MMM yyyy HH:mm:ss",
///                                 "dd MMMM yyyy HH:mm:ss",
///                                 "d MMM yyyy H:m:s",
///                                 "d MMMM yyyy H:m:s",
///                                 "d-M-yyyy H:m:s",
///                                 "d-M-yyyy H:m",
///                                 "yyyy-M-d H:m",
///                                 "MM/dd/yyyy HH:mm",
///                                 "M/d/yyyy H:m",
///                                 "yyyy/MM/dd HH:mm",
///                                 "yyyy/M/d H:m",
///                                 "dd MMMM yyyy HH:mm",
///                                 "dd MMM yyyy HH:mm",
///                                 "d MMMM yyyy H:m",
///                                 "d MMM yyyy H:m",
///                                 "MM-dd-yyyy hh:mm:ss a",
///                                 "MM-dd-yyyy HH:mm:ss",
///                                 "MM/dd/yyyy hh:mm:ss a",
///                                 "yyyy.MM.dd hh:mm:ss a",
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd",
///                             },
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "enableCdc",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "skipInitialLoad",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "columnNamesAsHeader",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "columnDelimiter",
///                             Value = ",",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "escapeChar",
///                             Value = "\\\\",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "quoteChar",
///                             Value = "\\\"",
///                         },
///                     },
///                     IsInlineDataset = true,
///                     LinkedService = new AzureNative.DataFactory.Inputs.LinkedServiceReferenceArgs
///                     {
///                         ReferenceName = "amjaAdls03",
///                         Type = AzureNative.DataFactory.Type.LinkedServiceReference,
///                     },
///                     LinkedServiceType = "AzureBlobFS",
///                     Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                 },
///                 SourceEntities = new[]
///                 {
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "folderPath",
///                                 Value = "customer",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "source/customer",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "short",
///                                 Name = "CustId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustAddres",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepLoc",
///                             },
///                         },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "folderPath",
///                                 Value = "employee",
///                             },
///                         },
///                         Name = "source/employee",
///                         Schema = new() { },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "lookup",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "lookup",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "lookup",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "short",
///                                 Name = "EmpId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "EmpName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "HomeAddress",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "OfficeAddress",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "integer",
///                                 Name = "EmpPhoneNumber",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "DepName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "DepLoc",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "double",
///                                 Name = "DecimalCol",
///                             },
///                         },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "container",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "fileSystem",
///                                 Value = "source",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "folderPath",
///                                 Value = "justSchema",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "source/justSchema",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustAddres",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDepLoc",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Status = "Stopped",
///         TargetConnectionsInfo = new[]
///         {
///             new AzureNative.DataFactory.Inputs.MapperTargetConnectionsInfoArgs
///             {
///                 Connection = new AzureNative.DataFactory.Inputs.MapperConnectionArgs
///                 {
///                     CommonDslConnectorProperties = new[]
///                     {
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "allowSchemaDrift",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "inferDriftedColumnTypes",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "format",
///                             Value = "table",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "store",
///                             Value = "sqlserver",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "databaseType",
///                             Value = "databaseType",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "database",
///                             Value = "database",
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "deletable",
///                             Value = false,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "insertable",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "updateable",
///                             Value = false,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "upsertable",
///                             Value = false,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "skipDuplicateMapInputs",
///                             Value = true,
///                         },
///                         new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                         {
///                             Name = "skipDuplicateMapOutputs",
///                             Value = true,
///                         },
///                     },
///                     IsInlineDataset = true,
///                     LinkedService = new AzureNative.DataFactory.Inputs.LinkedServiceReferenceArgs
///                     {
///                         ReferenceName = "amjaSql",
///                         Type = AzureNative.DataFactory.Type.LinkedServiceReference,
///                     },
///                     LinkedServiceType = "AzureSqlDatabase",
///                     Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                 },
///                 DataMapperMappings = new[]
///                 {
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new[]
///                             {
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReferences = new[]
///                                     {
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "source/customer",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "CustAddres",
///                                         },
///                                     },
///                                     Expression = "trim(CustAddres)",
///                                     FunctionName = "trim",
///                                     Name = "CustAddres",
///                                     Type = AzureNative.DataFactory.MappingType.Derived,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/customer",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustDepName",
///                                     },
///                                     FunctionName = "",
///                                     Name = "CustDeptName",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/customer",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustName",
///                                     },
///                                     FunctionName = "",
///                                     Name = "CustEmail",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/customer",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustId",
///                                     },
///                                     FunctionName = "",
///                                     Name = "CustId",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/customer",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustName",
///                                     },
///                                     FunctionName = "",
///                                     Name = "CustName",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                             },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "source/customer",
///                         TargetEntityName = "dbo.customer",
///                     },
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new[]
///                             {
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReferences = new[]
///                                     {
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "lookup",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "EmpName",
///                                         },
///                                     },
///                                     Expression = "upper(EmpName)",
///                                     FunctionName = "upper",
///                                     Name = "Name",
///                                     Type = AzureNative.DataFactory.MappingType.Derived,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "lookup",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "EmpId",
///                                     },
///                                     FunctionName = "",
///                                     Name = "PersonID",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                             },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "lookup",
///                         TargetEntityName = "dbo.data_source_table",
///                     },
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new() { },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "source/employee",
///                         TargetEntityName = "dbo.employee",
///                     },
///                     new AzureNative.DataFactory.Inputs.DataMapperMappingArgs
///                     {
///                         AttributeMappingInfo = new AzureNative.DataFactory.Inputs.MapperAttributeMappingsArgs
///                         {
///                             AttributeMappings = new[]
///                             {
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReferences = new[]
///                                     {
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "source/justSchema",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "CustAddres",
///                                         },
///                                     },
///                                     Expression = "trim(CustAddres)",
///                                     FunctionName = "trim",
///                                     Name = "CustAddres",
///                                     Type = AzureNative.DataFactory.MappingType.Derived,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/justSchema",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustDepLoc",
///                                     },
///                                     Name = "CustDepLoc",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReferences = new[]
///                                     {
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "source/justSchema",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "CustName",
///                                         },
///                                         new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                         {
///                                             Entity = "source/justSchema",
///                                             EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                             {
///                                                 ConnectionName = "amjaAdls03",
///                                                 Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                             },
///                                             Name = "CustDepName",
///                                         },
///                                     },
///                                     Expression = "concat(CustName, \" -> \", CustDepName)",
///                                     FunctionName = "",
///                                     Name = "CustDepName",
///                                     Type = AzureNative.DataFactory.MappingType.Derived,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/justSchema",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustId",
///                                     },
///                                     FunctionName = "",
///                                     Name = "CustId",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                                 new AzureNative.DataFactory.Inputs.MapperAttributeMappingArgs
///                                 {
///                                     AttributeReference = new AzureNative.DataFactory.Inputs.MapperAttributeReferenceArgs
///                                     {
///                                         Entity = "source/justSchema",
///                                         EntityConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                                         {
///                                             ConnectionName = "amjaAdls03",
///                                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                                         },
///                                         Name = "CustName",
///                                     },
///                                     Name = "CustName",
///                                     Type = AzureNative.DataFactory.MappingType.Direct,
///                                 },
///                             },
///                         },
///                         SourceConnectionReference = new AzureNative.DataFactory.Inputs.MapperConnectionReferenceArgs
///                         {
///                             ConnectionName = "amjaAdls03",
///                             Type = AzureNative.DataFactory.ConnectionType.Linkedservicetype,
///                         },
///                         SourceEntityName = "source/justSchema",
///                         TargetEntityName = "dbo.justSchema",
///                     },
///                 },
///                 Relationships = new() { },
///                 TargetEntities = new[]
///                 {
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "employee",
///                             },
///                         },
///                         Name = "dbo.employee",
///                         Schema = new() { },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "justSchema",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = true,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = true,
///                             },
///                         },
///                         Name = "dbo.justSchema",
///                         Schema = new() { },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "customer",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                         },
///                         Name = "dbo.customer",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "integer",
///                                 Name = "CustId",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustAddres",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustDeptName",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "CustEmail",
///                             },
///                         },
///                     },
///                     new AzureNative.DataFactory.Inputs.MapperTableArgs
///                     {
///                         DslConnectorProperties = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "schemaName",
///                                 Value = "dbo",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "tableName",
///                                 Value = "data_source_table",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "allowSchemaDrift",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "inferDriftedColumnTypes",
///                                 Value = false,
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperDslConnectorPropertiesArgs
///                             {
///                                 Name = "defaultToUpsert",
///                                 Value = false,
///                             },
///                         },
///                         Name = "dbo.data_source_table",
///                         Schema = new[]
///                         {
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "integer",
///                                 Name = "PersonID",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "string",
///                                 Name = "Name",
///                             },
///                             new AzureNative.DataFactory.Inputs.MapperTableSchemaArgs
///                             {
///                                 DataType = "timestamp",
///                                 Name = "LastModifytime",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewChangeDataCapture(ctx, "changeDataCapture", &datafactory.ChangeDataCaptureArgs{
/// 			AllowVNetOverride:     pulumi.Bool(false),
/// 			ChangeDataCaptureName: pulumi.String("exampleChangeDataCapture"),
/// 			Description:           pulumi.String("Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database. Updating table mappings."),
/// 			FactoryName:           pulumi.String("exampleFactoryName"),
/// 			Policy: &datafactory.MapperPolicyArgs{
/// 				Mode: pulumi.String("Microbatch"),
/// 				Recurrence: &datafactory.MapperPolicyRecurrenceArgs{
/// 					Frequency: pulumi.String(datafactory.FrequencyTypeMinute),
/// 					Interval:  pulumi.Int(15),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
/// 			SourceConnectionsInfo: datafactory.MapperSourceConnectionsInfoArray{
/// 				&datafactory.MapperSourceConnectionsInfoArgs{
/// 					Connection: &datafactory.MapperConnectionArgs{
/// 						CommonDslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("allowSchemaDrift"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("inferDriftedColumnTypes"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("format"),
/// 								Value: pulumi.Any("delimited"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name: pulumi.String("dateFormats"),
/// 								Value: pulumi.Any{
/// 									"MM/dd/yyyy",
/// 									"dd/MM/yyyy",
/// 									"yyyy/MM/dd",
/// 									"MM-dd-yyyy",
/// 									"dd-MM-yyyy",
/// 									"yyyy-MM-dd",
/// 									"dd.MM.yyyy",
/// 									"MM.dd.yyyy",
/// 									"yyyy.MM.dd",
/// 								},
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name: pulumi.String("timestampFormats"),
/// 								Value: pulumi.Any{
/// 									"yyyyMMddHHmm",
/// 									"yyyyMMdd HHmm",
/// 									"yyyyMMddHHmmss",
/// 									"yyyyMMdd HHmmss",
/// 									"dd-MM-yyyy HH:mm:ss",
/// 									"dd-MM-yyyy HH:mm",
/// 									"yyyy-M-d H:m:s",
/// 									"yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
/// 									"yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
/// 									"yyyy-M-d\\'T\\'H:m:s",
/// 									"yyyy-MM-dd\\'T\\'HH:mm:ss",
/// 									"yyyy-MM-dd HH:mm:ss",
/// 									"yyyy-MM-dd HH:mm",
/// 									"yyyy.MM.dd HH:mm:ss",
/// 									"MM/dd/yyyy HH:mm:ss",
/// 									"M/d/yyyy H:m:s",
/// 									"yyyy/MM/dd HH:mm:ss",
/// 									"yyyy/M/d H:m:s",
/// 									"dd MMM yyyy HH:mm:ss",
/// 									"dd MMMM yyyy HH:mm:ss",
/// 									"d MMM yyyy H:m:s",
/// 									"d MMMM yyyy H:m:s",
/// 									"d-M-yyyy H:m:s",
/// 									"d-M-yyyy H:m",
/// 									"yyyy-M-d H:m",
/// 									"MM/dd/yyyy HH:mm",
/// 									"M/d/yyyy H:m",
/// 									"yyyy/MM/dd HH:mm",
/// 									"yyyy/M/d H:m",
/// 									"dd MMMM yyyy HH:mm",
/// 									"dd MMM yyyy HH:mm",
/// 									"d MMMM yyyy H:m",
/// 									"d MMM yyyy H:m",
/// 									"MM-dd-yyyy hh:mm:ss a",
/// 									"MM-dd-yyyy HH:mm:ss",
/// 									"MM/dd/yyyy hh:mm:ss a",
/// 									"yyyy.MM.dd hh:mm:ss a",
/// 									"MM/dd/yyyy",
/// 									"dd/MM/yyyy",
/// 									"yyyy/MM/dd",
/// 									"MM-dd-yyyy",
/// 									"dd-MM-yyyy",
/// 									"yyyy-MM-dd",
/// 									"dd.MM.yyyy",
/// 									"MM.dd.yyyy",
/// 									"yyyy.MM.dd",
/// 								},
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("enableCdc"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("skipInitialLoad"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("columnNamesAsHeader"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("columnDelimiter"),
/// 								Value: pulumi.Any(","),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("escapeChar"),
/// 								Value: pulumi.Any("\\\\"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("quoteChar"),
/// 								Value: pulumi.Any("\\\""),
/// 							},
/// 						},
/// 						IsInlineDataset: pulumi.Bool(true),
/// 						LinkedService: &datafactory.LinkedServiceReferenceArgs{
/// 							ReferenceName: pulumi.String("amjaAdls03"),
/// 							Type:          pulumi.String(datafactory.TypeLinkedServiceReference),
/// 						},
/// 						LinkedServiceType: pulumi.String("AzureBlobFS"),
/// 						Type:              pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 					},
/// 					SourceEntities: datafactory.MapperTableArray{
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("folderPath"),
/// 									Value: pulumi.Any("customer"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("source/customer"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("short"),
/// 									Name:     pulumi.String("CustId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustAddres"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepLoc"),
/// 								},
/// 							},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("folderPath"),
/// 									Value: pulumi.Any("employee"),
/// 								},
/// 							},
/// 							Name:   pulumi.String("source/employee"),
/// 							Schema: datafactory.MapperTableSchemaArray{},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("lookup"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("lookup"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("lookup"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("short"),
/// 									Name:     pulumi.String("EmpId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("EmpName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("HomeAddress"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("OfficeAddress"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("integer"),
/// 									Name:     pulumi.String("EmpPhoneNumber"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("DepName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("DepLoc"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("double"),
/// 									Name:     pulumi.String("DecimalCol"),
/// 								},
/// 							},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("container"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("fileSystem"),
/// 									Value: pulumi.Any("source"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("folderPath"),
/// 									Value: pulumi.Any("justSchema"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("source/justSchema"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustAddres"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDepLoc"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Status: pulumi.String("Stopped"),
/// 			TargetConnectionsInfo: datafactory.MapperTargetConnectionsInfoArray{
/// 				&datafactory.MapperTargetConnectionsInfoArgs{
/// 					Connection: &datafactory.MapperConnectionArgs{
/// 						CommonDslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("allowSchemaDrift"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("inferDriftedColumnTypes"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("format"),
/// 								Value: pulumi.Any("table"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("store"),
/// 								Value: pulumi.Any("sqlserver"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("databaseType"),
/// 								Value: pulumi.Any("databaseType"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("database"),
/// 								Value: pulumi.Any("database"),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("deletable"),
/// 								Value: pulumi.Any(false),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("insertable"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("updateable"),
/// 								Value: pulumi.Any(false),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("upsertable"),
/// 								Value: pulumi.Any(false),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("skipDuplicateMapInputs"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 							&datafactory.MapperDslConnectorPropertiesArgs{
/// 								Name:  pulumi.String("skipDuplicateMapOutputs"),
/// 								Value: pulumi.Any(true),
/// 							},
/// 						},
/// 						IsInlineDataset: pulumi.Bool(true),
/// 						LinkedService: &datafactory.LinkedServiceReferenceArgs{
/// 							ReferenceName: pulumi.String("amjaSql"),
/// 							Type:          pulumi.String(datafactory.TypeLinkedServiceReference),
/// 						},
/// 						LinkedServiceType: pulumi.String("AzureSqlDatabase"),
/// 						Type:              pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 					},
/// 					DataMapperMappings: datafactory.DataMapperMappingArray{
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReferences: datafactory.MapperAttributeReferenceArray{
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("source/customer"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("CustAddres"),
/// 											},
/// 										},
/// 										Expression:   pulumi.String("trim(CustAddres)"),
/// 										FunctionName: pulumi.String("trim"),
/// 										Name:         pulumi.String("CustAddres"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDerived),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/customer"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustDepName"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustDeptName"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/customer"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustName"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustEmail"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/customer"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustId"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustId"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/customer"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustName"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustName"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 								},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("source/customer"),
/// 							TargetEntityName: pulumi.String("dbo.customer"),
/// 						},
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReferences: datafactory.MapperAttributeReferenceArray{
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("lookup"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("EmpName"),
/// 											},
/// 										},
/// 										Expression:   pulumi.String("upper(EmpName)"),
/// 										FunctionName: pulumi.String("upper"),
/// 										Name:         pulumi.String("Name"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDerived),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("lookup"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("EmpId"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("PersonID"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 								},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("lookup"),
/// 							TargetEntityName: pulumi.String("dbo.data_source_table"),
/// 						},
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("source/employee"),
/// 							TargetEntityName: pulumi.String("dbo.employee"),
/// 						},
/// 						&datafactory.DataMapperMappingArgs{
/// 							AttributeMappingInfo: &datafactory.MapperAttributeMappingsArgs{
/// 								AttributeMappings: datafactory.MapperAttributeMappingArray{
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReferences: datafactory.MapperAttributeReferenceArray{
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("source/justSchema"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("CustAddres"),
/// 											},
/// 										},
/// 										Expression:   pulumi.String("trim(CustAddres)"),
/// 										FunctionName: pulumi.String("trim"),
/// 										Name:         pulumi.String("CustAddres"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDerived),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/justSchema"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustDepLoc"),
/// 										},
/// 										Name: pulumi.String("CustDepLoc"),
/// 										Type: pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReferences: datafactory.MapperAttributeReferenceArray{
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("source/justSchema"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("CustName"),
/// 											},
/// 											&datafactory.MapperAttributeReferenceArgs{
/// 												Entity: pulumi.String("source/justSchema"),
/// 												EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 													ConnectionName: pulumi.String("amjaAdls03"),
/// 													Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 												},
/// 												Name: pulumi.String("CustDepName"),
/// 											},
/// 										},
/// 										Expression:   pulumi.String("concat(CustName, \" -> \", CustDepName)"),
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustDepName"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDerived),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/justSchema"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustId"),
/// 										},
/// 										FunctionName: pulumi.String(""),
/// 										Name:         pulumi.String("CustId"),
/// 										Type:         pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 									&datafactory.MapperAttributeMappingArgs{
/// 										AttributeReference: &datafactory.MapperAttributeReferenceArgs{
/// 											Entity: pulumi.String("source/justSchema"),
/// 											EntityConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 												ConnectionName: pulumi.String("amjaAdls03"),
/// 												Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 											},
/// 											Name: pulumi.String("CustName"),
/// 										},
/// 										Name: pulumi.String("CustName"),
/// 										Type: pulumi.String(datafactory.MappingTypeDirect),
/// 									},
/// 								},
/// 							},
/// 							SourceConnectionReference: &datafactory.MapperConnectionReferenceArgs{
/// 								ConnectionName: pulumi.String("amjaAdls03"),
/// 								Type:           pulumi.String(datafactory.ConnectionTypeLinkedservicetype),
/// 							},
/// 							SourceEntityName: pulumi.String("source/justSchema"),
/// 							TargetEntityName: pulumi.String("dbo.justSchema"),
/// 						},
/// 					},
/// 					Relationships: pulumi.Array{},
/// 					TargetEntities: datafactory.MapperTableArray{
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("employee"),
/// 								},
/// 							},
/// 							Name:   pulumi.String("dbo.employee"),
/// 							Schema: datafactory.MapperTableSchemaArray{},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("justSchema"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(true),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(true),
/// 								},
/// 							},
/// 							Name:   pulumi.String("dbo.justSchema"),
/// 							Schema: datafactory.MapperTableSchemaArray{},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("customer"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("dbo.customer"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("integer"),
/// 									Name:     pulumi.String("CustId"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustAddres"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustDeptName"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("CustEmail"),
/// 								},
/// 							},
/// 						},
/// 						&datafactory.MapperTableArgs{
/// 							DslConnectorProperties: datafactory.MapperDslConnectorPropertiesArray{
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("schemaName"),
/// 									Value: pulumi.Any("dbo"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("tableName"),
/// 									Value: pulumi.Any("data_source_table"),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("allowSchemaDrift"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("inferDriftedColumnTypes"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 								&datafactory.MapperDslConnectorPropertiesArgs{
/// 									Name:  pulumi.String("defaultToUpsert"),
/// 									Value: pulumi.Any(false),
/// 								},
/// 							},
/// 							Name: pulumi.String("dbo.data_source_table"),
/// 							Schema: datafactory.MapperTableSchemaArray{
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("integer"),
/// 									Name:     pulumi.String("PersonID"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("string"),
/// 									Name:     pulumi.String("Name"),
/// 								},
/// 								&datafactory.MapperTableSchemaArgs{
/// 									DataType: pulumi.String("timestamp"),
/// 									Name:     pulumi.String("LastModifytime"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datafactory_changedatacapture" "changeDataCapture" {
///   allow_v_net_override     = false
///   change_data_capture_name = "exampleChangeDataCapture"
///   description              = "Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database. Updating table mappings."
///   factory_name             = "exampleFactoryName"
///   policy = {
///     mode = "Microbatch"
///     recurrence = {
///       frequency = "Minute"
///       interval  = 15
///     }
///   }
///   resource_group_name = "exampleResourceGroup"
///   source_connections_info {
///     connection = {
///       common_dsl_connector_properties = [{
///         "name"  = "allowSchemaDrift"
///         "value" = true
///         }, {
///         "name"  = "inferDriftedColumnTypes"
///         "value" = true
///         }, {
///         "name"  = "format"
///         "value" = "delimited"
///         }, {
///         "name"  = "dateFormats"
///         "value" = ["MM/dd/yyyy", "dd/MM/yyyy", "yyyy/MM/dd", "MM-dd-yyyy", "dd-MM-yyyy", "yyyy-MM-dd", "dd.MM.yyyy", "MM.dd.yyyy", "yyyy.MM.dd"]
///         }, {
///         "name"  = "timestampFormats"
///         "value" = ["yyyyMMddHHmm", "yyyyMMdd HHmm", "yyyyMMddHHmmss", "yyyyMMdd HHmmss", "dd-MM-yyyy HH:mm:ss", "dd-MM-yyyy HH:mm", "yyyy-M-d H:m:s", "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'", "yyyy-M-d\\'T\\'H:m:s\\'Z\\'", "yyyy-M-d\\'T\\'H:m:s", "yyyy-MM-dd\\'T\\'HH:mm:ss", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy.MM.dd HH:mm:ss", "MM/dd/yyyy HH:mm:ss", "M/d/yyyy H:m:s", "yyyy/MM/dd HH:mm:ss", "yyyy/M/d H:m:s", "dd MMM yyyy HH:mm:ss", "dd MMMM yyyy HH:mm:ss", "d MMM yyyy H:m:s", "d MMMM yyyy H:m:s", "d-M-yyyy H:m:s", "d-M-yyyy H:m", "yyyy-M-d H:m", "MM/dd/yyyy HH:mm", "M/d/yyyy H:m", "yyyy/MM/dd HH:mm", "yyyy/M/d H:m", "dd MMMM yyyy HH:mm", "dd MMM yyyy HH:mm", "d MMMM yyyy H:m", "d MMM yyyy H:m", "MM-dd-yyyy hh:mm:ss a", "MM-dd-yyyy HH:mm:ss", "MM/dd/yyyy hh:mm:ss a", "yyyy.MM.dd hh:mm:ss a", "MM/dd/yyyy", "dd/MM/yyyy", "yyyy/MM/dd", "MM-dd-yyyy", "dd-MM-yyyy", "yyyy-MM-dd", "dd.MM.yyyy", "MM.dd.yyyy", "yyyy.MM.dd"]
///         }, {
///         "name"  = "enableCdc"
///         "value" = true
///         }, {
///         "name"  = "skipInitialLoad"
///         "value" = true
///         }, {
///         "name"  = "columnNamesAsHeader"
///         "value" = true
///         }, {
///         "name"  = "columnDelimiter"
///         "value" = ","
///         }, {
///         "name"  = "escapeChar"
///         "value" = "\\\\"
///         }, {
///         "name"  = "quoteChar"
///         "value" = "\\\""
///       }]
///       is_inline_dataset = true
///       linked_service = {
///         reference_name = "amjaAdls03"
///         type           = "LinkedServiceReference"
///       }
///       linked_service_type = "AzureBlobFS"
///       type                = "linkedservicetype"
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "folderPath"
///         value = "customer"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "source/customer"
///       schema {
///         data_type = "short"
///         name      = "CustId"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustAddres"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepLoc"
///       }
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "folderPath"
///         value = "employee"
///       }
///       name = "source/employee"
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "lookup"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "lookup"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "lookup"
///       schema {
///         data_type = "short"
///         name      = "EmpId"
///       }
///       schema {
///         data_type = "string"
///         name      = "EmpName"
///       }
///       schema {
///         data_type = "string"
///         name      = "HomeAddress"
///       }
///       schema {
///         data_type = "string"
///         name      = "OfficeAddress"
///       }
///       schema {
///         data_type = "integer"
///         name      = "EmpPhoneNumber"
///       }
///       schema {
///         data_type = "string"
///         name      = "DepName"
///       }
///       schema {
///         data_type = "string"
///         name      = "DepLoc"
///       }
///       schema {
///         data_type = "double"
///         name      = "DecimalCol"
///       }
///     }
///     source_entities {
///       dsl_connector_properties {
///         name  = "container"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "fileSystem"
///         value = "source"
///       }
///       dsl_connector_properties {
///         name  = "folderPath"
///         value = "justSchema"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "source/justSchema"
///       schema {
///         data_type = "string"
///         name      = "CustId"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustAddres"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDepLoc"
///       }
///     }
///   }
///   status = "Stopped"
///   target_connections_info {
///     connection = {
///       common_dsl_connector_properties = [{
///         "name"  = "allowSchemaDrift"
///         "value" = true
///         }, {
///         "name"  = "inferDriftedColumnTypes"
///         "value" = true
///         }, {
///         "name"  = "format"
///         "value" = "table"
///         }, {
///         "name"  = "store"
///         "value" = "sqlserver"
///         }, {
///         "name"  = "databaseType"
///         "value" = "databaseType"
///         }, {
///         "name"  = "database"
///         "value" = "database"
///         }, {
///         "name"  = "deletable"
///         "value" = false
///         }, {
///         "name"  = "insertable"
///         "value" = true
///         }, {
///         "name"  = "updateable"
///         "value" = false
///         }, {
///         "name"  = "upsertable"
///         "value" = false
///         }, {
///         "name"  = "skipDuplicateMapInputs"
///         "value" = true
///         }, {
///         "name"  = "skipDuplicateMapOutputs"
///         "value" = true
///       }]
///       is_inline_dataset = true
///       linked_service = {
///         reference_name = "amjaSql"
///         type           = "LinkedServiceReference"
///       }
///       linked_service_type = "AzureSqlDatabase"
///       type                = "linkedservicetype"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = [{
///           "attributeReferences" = [{
///             "entity" = "source/customer"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustAddres"
///           }]
///           "expression"   = "trim(CustAddres)"
///           "functionName" = "trim"
///           "name"         = "CustAddres"
///           "type"         = "Derived"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/customer"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustDepName"
///           }
///           "functionName" = ""
///           "name"         = "CustDeptName"
///           "type"         = "Direct"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/customer"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustName"
///           }
///           "functionName" = ""
///           "name"         = "CustEmail"
///           "type"         = "Direct"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/customer"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustId"
///           }
///           "functionName" = ""
///           "name"         = "CustId"
///           "type"         = "Direct"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/customer"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustName"
///           }
///           "functionName" = ""
///           "name"         = "CustName"
///           "type"         = "Direct"
///         }]
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "source/customer"
///       target_entity_name = "dbo.customer"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = [{
///           "attributeReferences" = [{
///             "entity" = "lookup"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "EmpName"
///           }]
///           "expression"   = "upper(EmpName)"
///           "functionName" = "upper"
///           "name"         = "Name"
///           "type"         = "Derived"
///           }, {
///           "attributeReference" = {
///             "entity" = "lookup"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "EmpId"
///           }
///           "functionName" = ""
///           "name"         = "PersonID"
///           "type"         = "Direct"
///         }]
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "lookup"
///       target_entity_name = "dbo.data_source_table"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = []
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "source/employee"
///       target_entity_name = "dbo.employee"
///     }
///     data_mapper_mappings {
///       attribute_mapping_info = {
///         attribute_mappings = [{
///           "attributeReferences" = [{
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustAddres"
///           }]
///           "expression"   = "trim(CustAddres)"
///           "functionName" = "trim"
///           "name"         = "CustAddres"
///           "type"         = "Derived"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustDepLoc"
///           }
///           "name" = "CustDepLoc"
///           "type" = "Direct"
///           }, {
///           "attributeReferences" = [{
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustName"
///             }, {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustDepName"
///           }]
///           "expression"   = "concat(CustName, \" -> \", CustDepName)"
///           "functionName" = ""
///           "name"         = "CustDepName"
///           "type"         = "Derived"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustId"
///           }
///           "functionName" = ""
///           "name"         = "CustId"
///           "type"         = "Direct"
///           }, {
///           "attributeReference" = {
///             "entity" = "source/justSchema"
///             "entityConnectionReference" = {
///               "connectionName" = "amjaAdls03"
///               "type"           = "linkedservicetype"
///             }
///             "name" = "CustName"
///           }
///           "name" = "CustName"
///           "type" = "Direct"
///         }]
///       }
///       source_connection_reference = {
///         connection_name = "amjaAdls03"
///         type            = "linkedservicetype"
///       }
///       source_entity_name = "source/justSchema"
///       target_entity_name = "dbo.justSchema"
///     }
///     relationships = []
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "employee"
///       }
///       name = "dbo.employee"
///     }
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "justSchema"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = true
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = true
///       }
///       name = "dbo.justSchema"
///     }
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "customer"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       name = "dbo.customer"
///       schema {
///         data_type = "integer"
///         name      = "CustId"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustAddres"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustDeptName"
///       }
///       schema {
///         data_type = "string"
///         name      = "CustEmail"
///       }
///     }
///     target_entities {
///       dsl_connector_properties {
///         name  = "schemaName"
///         value = "dbo"
///       }
///       dsl_connector_properties {
///         name  = "tableName"
///         value = "data_source_table"
///       }
///       dsl_connector_properties {
///         name  = "allowSchemaDrift"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "inferDriftedColumnTypes"
///         value = false
///       }
///       dsl_connector_properties {
///         name  = "defaultToUpsert"
///         value = false
///       }
///       name = "dbo.data_source_table"
///       schema {
///         data_type = "integer"
///         name      = "PersonID"
///       }
///       schema {
///         data_type = "string"
///         name      = "Name"
///       }
///       schema {
///         data_type = "timestamp"
///         name      = "LastModifytime"
///       }
///     }
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datafactory.ChangeDataCapture;
/// import com.pulumi.azurenative.datafactory.ChangeDataCaptureArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperPolicyArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperPolicyRecurrenceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperSourceConnectionsInfoArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperConnectionArgs;
/// import com.pulumi.azurenative.datafactory.inputs.LinkedServiceReferenceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MapperTargetConnectionsInfoArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var changeDataCapture = new ChangeDataCapture("changeDataCapture", ChangeDataCaptureArgs.builder()
///             .allowVNetOverride(false)
///             .changeDataCaptureName("exampleChangeDataCapture")
///             .description("Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database. Updating table mappings.")
///             .factoryName("exampleFactoryName")
///             .policy(MapperPolicyArgs.builder()
///                 .mode("Microbatch")
///                 .recurrence(MapperPolicyRecurrenceArgs.builder()
///                     .frequency("Minute")
///                     .interval(15)
///                     .build())
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
///             .sourceConnectionsInfo(MapperSourceConnectionsInfoArgs.builder()
///                 .connection(MapperConnectionArgs.builder()
///                     .commonDslConnectorProperties(
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("allowSchemaDrift")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("inferDriftedColumnTypes")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("format")
///                             .value("delimited")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("dateFormats")
///                             .value(
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("timestampFormats")
///                             .value(
///                                 "yyyyMMddHHmm",
///                                 "yyyyMMdd HHmm",
///                                 "yyyyMMddHHmmss",
///                                 "yyyyMMdd HHmmss",
///                                 "dd-MM-yyyy HH:mm:ss",
///                                 "dd-MM-yyyy HH:mm",
///                                 "yyyy-M-d H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                                 "yyyy-M-d\\'T\\'H:m:s",
///                                 "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm:ss",
///                                 "yyyy-MM-dd HH:mm",
///                                 "yyyy.MM.dd HH:mm:ss",
///                                 "MM/dd/yyyy HH:mm:ss",
///                                 "M/d/yyyy H:m:s",
///                                 "yyyy/MM/dd HH:mm:ss",
///                                 "yyyy/M/d H:m:s",
///                                 "dd MMM yyyy HH:mm:ss",
///                                 "dd MMMM yyyy HH:mm:ss",
///                                 "d MMM yyyy H:m:s",
///                                 "d MMMM yyyy H:m:s",
///                                 "d-M-yyyy H:m:s",
///                                 "d-M-yyyy H:m",
///                                 "yyyy-M-d H:m",
///                                 "MM/dd/yyyy HH:mm",
///                                 "M/d/yyyy H:m",
///                                 "yyyy/MM/dd HH:mm",
///                                 "yyyy/M/d H:m",
///                                 "dd MMMM yyyy HH:mm",
///                                 "dd MMM yyyy HH:mm",
///                                 "d MMMM yyyy H:m",
///                                 "d MMM yyyy H:m",
///                                 "MM-dd-yyyy hh:mm:ss a",
///                                 "MM-dd-yyyy HH:mm:ss",
///                                 "MM/dd/yyyy hh:mm:ss a",
///                                 "yyyy.MM.dd hh:mm:ss a",
///                                 "MM/dd/yyyy",
///                                 "dd/MM/yyyy",
///                                 "yyyy/MM/dd",
///                                 "MM-dd-yyyy",
///                                 "dd-MM-yyyy",
///                                 "yyyy-MM-dd",
///                                 "dd.MM.yyyy",
///                                 "MM.dd.yyyy",
///                                 "yyyy.MM.dd")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("enableCdc")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("skipInitialLoad")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("columnNamesAsHeader")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("columnDelimiter")
///                             .value(",")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("escapeChar")
///                             .value("\\\\")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("quoteChar")
///                             .value("\\\"")
///                             .build())
///                     .isInlineDataset(true)
///                     .linkedService(LinkedServiceReferenceArgs.builder()
///                         .referenceName("amjaAdls03")
///                         .type("LinkedServiceReference")
///                         .build())
///                     .linkedServiceType("AzureBlobFS")
///                     .type("linkedservicetype")
///                     .build())
///                 .sourceEntities(
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("folderPath")
///                                 .value("customer")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("source/customer")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("short")
///                                 .name("CustId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustAddres")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepLoc")
///                                 .build())
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("folderPath")
///                                 .value("employee")
///                                 .build())
///                         .name("source/employee")
///                         .schema()
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("lookup")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("lookup")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("lookup")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("short")
///                                 .name("EmpId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("EmpName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("HomeAddress")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("OfficeAddress")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("integer")
///                                 .name("EmpPhoneNumber")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("DepName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("DepLoc")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("double")
///                                 .name("DecimalCol")
///                                 .build())
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("container")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("fileSystem")
///                                 .value("source")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("folderPath")
///                                 .value("justSchema")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("source/justSchema")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustAddres")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDepLoc")
///                                 .build())
///                         .build())
///                 .build())
///             .status("Stopped")
///             .targetConnectionsInfo(MapperTargetConnectionsInfoArgs.builder()
///                 .connection(MapperConnectionArgs.builder()
///                     .commonDslConnectorProperties(
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("allowSchemaDrift")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("inferDriftedColumnTypes")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("format")
///                             .value("table")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("store")
///                             .value("sqlserver")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("databaseType")
///                             .value("databaseType")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("database")
///                             .value("database")
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("deletable")
///                             .value(false)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("insertable")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("updateable")
///                             .value(false)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("upsertable")
///                             .value(false)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("skipDuplicateMapInputs")
///                             .value(true)
///                             .build(),
///                         MapperDslConnectorPropertiesArgs.builder()
///                             .name("skipDuplicateMapOutputs")
///                             .value(true)
///                             .build())
///                     .isInlineDataset(true)
///                     .linkedService(LinkedServiceReferenceArgs.builder()
///                         .referenceName("amjaSql")
///                         .type("LinkedServiceReference")
///                         .build())
///                     .linkedServiceType("AzureSqlDatabase")
///                     .type("linkedservicetype")
///                     .build())
///                 .dataMapperMappings(
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings(
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReferences(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/customer")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustAddres")
///                                         .build())
///                                     .expression("trim(CustAddres)")
///                                     .functionName("trim")
///                                     .name("CustAddres")
///                                     .type("Derived")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/customer")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustDepName")
///                                         .build())
///                                     .functionName("")
///                                     .name("CustDeptName")
///                                     .type("Direct")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/customer")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustName")
///                                         .build())
///                                     .functionName("")
///                                     .name("CustEmail")
///                                     .type("Direct")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/customer")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustId")
///                                         .build())
///                                     .functionName("")
///                                     .name("CustId")
///                                     .type("Direct")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/customer")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustName")
///                                         .build())
///                                     .functionName("")
///                                     .name("CustName")
///                                     .type("Direct")
///                                     .build())
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("source/customer")
///                         .targetEntityName("dbo.customer")
///                         .build(),
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings(
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReferences(MapperAttributeReferenceArgs.builder()
///                                         .entity("lookup")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("EmpName")
///                                         .build())
///                                     .expression("upper(EmpName)")
///                                     .functionName("upper")
///                                     .name("Name")
///                                     .type("Derived")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("lookup")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("EmpId")
///                                         .build())
///                                     .functionName("")
///                                     .name("PersonID")
///                                     .type("Direct")
///                                     .build())
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("lookup")
///                         .targetEntityName("dbo.data_source_table")
///                         .build(),
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings()
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("source/employee")
///                         .targetEntityName("dbo.employee")
///                         .build(),
///                     DataMapperMappingArgs.builder()
///                         .attributeMappingInfo(MapperAttributeMappingsArgs.builder()
///                             .attributeMappings(
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReferences(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustAddres")
///                                         .build())
///                                     .expression("trim(CustAddres)")
///                                     .functionName("trim")
///                                     .name("CustAddres")
///                                     .type("Derived")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustDepLoc")
///                                         .build())
///                                     .name("CustDepLoc")
///                                     .type("Direct")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReferences(
///                                         MapperAttributeReferenceArgs.builder()
///                                             .entity("source/justSchema")
///                                             .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                                 .connectionName("amjaAdls03")
///                                                 .type("linkedservicetype")
///                                                 .build())
///                                             .name("CustName")
///                                             .build(),
///                                         MapperAttributeReferenceArgs.builder()
///                                             .entity("source/justSchema")
///                                             .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                                 .connectionName("amjaAdls03")
///                                                 .type("linkedservicetype")
///                                                 .build())
///                                             .name("CustDepName")
///                                             .build())
///                                     .expression("concat(CustName, \" -> \", CustDepName)")
///                                     .functionName("")
///                                     .name("CustDepName")
///                                     .type("Derived")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustId")
///                                         .build())
///                                     .functionName("")
///                                     .name("CustId")
///                                     .type("Direct")
///                                     .build(),
///                                 MapperAttributeMappingArgs.builder()
///                                     .attributeReference(MapperAttributeReferenceArgs.builder()
///                                         .entity("source/justSchema")
///                                         .entityConnectionReference(MapperConnectionReferenceArgs.builder()
///                                             .connectionName("amjaAdls03")
///                                             .type("linkedservicetype")
///                                             .build())
///                                         .name("CustName")
///                                         .build())
///                                     .name("CustName")
///                                     .type("Direct")
///                                     .build())
///                             .build())
///                         .sourceConnectionReference(MapperConnectionReferenceArgs.builder()
///                             .connectionName("amjaAdls03")
///                             .type("linkedservicetype")
///                             .build())
///                         .sourceEntityName("source/justSchema")
///                         .targetEntityName("dbo.justSchema")
///                         .build())
///                 .relationships()
///                 .targetEntities(
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("employee")
///                                 .build())
///                         .name("dbo.employee")
///                         .schema()
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("justSchema")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(true)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(true)
///                                 .build())
///                         .name("dbo.justSchema")
///                         .schema()
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("customer")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build())
///                         .name("dbo.customer")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("integer")
///                                 .name("CustId")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustAddres")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustDeptName")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("CustEmail")
///                                 .build())
///                         .build(),
///                     MapperTableArgs.builder()
///                         .dslConnectorProperties(
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("schemaName")
///                                 .value("dbo")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("tableName")
///                                 .value("data_source_table")
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("allowSchemaDrift")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("inferDriftedColumnTypes")
///                                 .value(false)
///                                 .build(),
///                             MapperDslConnectorPropertiesArgs.builder()
///                                 .name("defaultToUpsert")
///                                 .value(false)
///                                 .build())
///                         .name("dbo.data_source_table")
///                         .schema(
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("integer")
///                                 .name("PersonID")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("string")
///                                 .name("Name")
///                                 .build(),
///                             MapperTableSchemaArgs.builder()
///                                 .dataType("timestamp")
///                                 .name("LastModifytime")
///                                 .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const changeDataCapture = new azure_native.datafactory.ChangeDataCapture("changeDataCapture", {
///     allowVNetOverride: false,
///     changeDataCaptureName: "exampleChangeDataCapture",
///     description: "Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database. Updating table mappings.",
///     factoryName: "exampleFactoryName",
///     policy: {
///         mode: "Microbatch",
///         recurrence: {
///             frequency: azure_native.datafactory.FrequencyType.Minute,
///             interval: 15,
///         },
///     },
///     resourceGroupName: "exampleResourceGroup",
///     sourceConnectionsInfo: [{
///         connection: {
///             commonDslConnectorProperties: [
///                 {
///                     name: "allowSchemaDrift",
///                     value: true,
///                 },
///                 {
///                     name: "inferDriftedColumnTypes",
///                     value: true,
///                 },
///                 {
///                     name: "format",
///                     value: "delimited",
///                 },
///                 {
///                     name: "dateFormats",
///                     value: [
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     name: "timestampFormats",
///                     value: [
///                         "yyyyMMddHHmm",
///                         "yyyyMMdd HHmm",
///                         "yyyyMMddHHmmss",
///                         "yyyyMMdd HHmmss",
///                         "dd-MM-yyyy HH:mm:ss",
///                         "dd-MM-yyyy HH:mm",
///                         "yyyy-M-d H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                         "yyyy-MM-dd HH:mm:ss",
///                         "yyyy-MM-dd HH:mm",
///                         "yyyy.MM.dd HH:mm:ss",
///                         "MM/dd/yyyy HH:mm:ss",
///                         "M/d/yyyy H:m:s",
///                         "yyyy/MM/dd HH:mm:ss",
///                         "yyyy/M/d H:m:s",
///                         "dd MMM yyyy HH:mm:ss",
///                         "dd MMMM yyyy HH:mm:ss",
///                         "d MMM yyyy H:m:s",
///                         "d MMMM yyyy H:m:s",
///                         "d-M-yyyy H:m:s",
///                         "d-M-yyyy H:m",
///                         "yyyy-M-d H:m",
///                         "MM/dd/yyyy HH:mm",
///                         "M/d/yyyy H:m",
///                         "yyyy/MM/dd HH:mm",
///                         "yyyy/M/d H:m",
///                         "dd MMMM yyyy HH:mm",
///                         "dd MMM yyyy HH:mm",
///                         "d MMMM yyyy H:m",
///                         "d MMM yyyy H:m",
///                         "MM-dd-yyyy hh:mm:ss a",
///                         "MM-dd-yyyy HH:mm:ss",
///                         "MM/dd/yyyy hh:mm:ss a",
///                         "yyyy.MM.dd hh:mm:ss a",
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     name: "enableCdc",
///                     value: true,
///                 },
///                 {
///                     name: "skipInitialLoad",
///                     value: true,
///                 },
///                 {
///                     name: "columnNamesAsHeader",
///                     value: true,
///                 },
///                 {
///                     name: "columnDelimiter",
///                     value: ",",
///                 },
///                 {
///                     name: "escapeChar",
///                     value: "\\\\",
///                 },
///                 {
///                     name: "quoteChar",
///                     value: "\\\"",
///                 },
///             ],
///             isInlineDataset: true,
///             linkedService: {
///                 referenceName: "amjaAdls03",
///                 type: azure_native.datafactory.Type.LinkedServiceReference,
///             },
///             linkedServiceType: "AzureBlobFS",
///             type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///         },
///         sourceEntities: [
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "source",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "source",
///                     },
///                     {
///                         name: "folderPath",
///                         value: "customer",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "source/customer",
///                 schema: [
///                     {
///                         dataType: "short",
///                         name: "CustId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustAddres",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepLoc",
///                     },
///                 ],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "source",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "source",
///                     },
///                     {
///                         name: "folderPath",
///                         value: "employee",
///                     },
///                 ],
///                 name: "source/employee",
///                 schema: [],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "lookup",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "lookup",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "lookup",
///                 schema: [
///                     {
///                         dataType: "short",
///                         name: "EmpId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "EmpName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "HomeAddress",
///                     },
///                     {
///                         dataType: "string",
///                         name: "OfficeAddress",
///                     },
///                     {
///                         dataType: "integer",
///                         name: "EmpPhoneNumber",
///                     },
///                     {
///                         dataType: "string",
///                         name: "DepName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "DepLoc",
///                     },
///                     {
///                         dataType: "double",
///                         name: "DecimalCol",
///                     },
///                 ],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "container",
///                         value: "source",
///                     },
///                     {
///                         name: "fileSystem",
///                         value: "source",
///                     },
///                     {
///                         name: "folderPath",
///                         value: "justSchema",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "source/justSchema",
///                 schema: [
///                     {
///                         dataType: "string",
///                         name: "CustId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustAddres",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDepLoc",
///                     },
///                 ],
///             },
///         ],
///     }],
///     status: "Stopped",
///     targetConnectionsInfo: [{
///         connection: {
///             commonDslConnectorProperties: [
///                 {
///                     name: "allowSchemaDrift",
///                     value: true,
///                 },
///                 {
///                     name: "inferDriftedColumnTypes",
///                     value: true,
///                 },
///                 {
///                     name: "format",
///                     value: "table",
///                 },
///                 {
///                     name: "store",
///                     value: "sqlserver",
///                 },
///                 {
///                     name: "databaseType",
///                     value: "databaseType",
///                 },
///                 {
///                     name: "database",
///                     value: "database",
///                 },
///                 {
///                     name: "deletable",
///                     value: false,
///                 },
///                 {
///                     name: "insertable",
///                     value: true,
///                 },
///                 {
///                     name: "updateable",
///                     value: false,
///                 },
///                 {
///                     name: "upsertable",
///                     value: false,
///                 },
///                 {
///                     name: "skipDuplicateMapInputs",
///                     value: true,
///                 },
///                 {
///                     name: "skipDuplicateMapOutputs",
///                     value: true,
///                 },
///             ],
///             isInlineDataset: true,
///             linkedService: {
///                 referenceName: "amjaSql",
///                 type: azure_native.datafactory.Type.LinkedServiceReference,
///             },
///             linkedServiceType: "AzureSqlDatabase",
///             type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///         },
///         dataMapperMappings: [
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [
///                         {
///                             attributeReferences: [{
///                                 entity: "source/customer",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustAddres",
///                             }],
///                             expression: "trim(CustAddres)",
///                             functionName: "trim",
///                             name: "CustAddres",
///                             type: azure_native.datafactory.MappingType.Derived,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/customer",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustDepName",
///                             },
///                             functionName: "",
///                             name: "CustDeptName",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/customer",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustName",
///                             },
///                             functionName: "",
///                             name: "CustEmail",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/customer",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustId",
///                             },
///                             functionName: "",
///                             name: "CustId",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/customer",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustName",
///                             },
///                             functionName: "",
///                             name: "CustName",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                     ],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "source/customer",
///                 targetEntityName: "dbo.customer",
///             },
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [
///                         {
///                             attributeReferences: [{
///                                 entity: "lookup",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "EmpName",
///                             }],
///                             expression: "upper(EmpName)",
///                             functionName: "upper",
///                             name: "Name",
///                             type: azure_native.datafactory.MappingType.Derived,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "lookup",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "EmpId",
///                             },
///                             functionName: "",
///                             name: "PersonID",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                     ],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "lookup",
///                 targetEntityName: "dbo.data_source_table",
///             },
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "source/employee",
///                 targetEntityName: "dbo.employee",
///             },
///             {
///                 attributeMappingInfo: {
///                     attributeMappings: [
///                         {
///                             attributeReferences: [{
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustAddres",
///                             }],
///                             expression: "trim(CustAddres)",
///                             functionName: "trim",
///                             name: "CustAddres",
///                             type: azure_native.datafactory.MappingType.Derived,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustDepLoc",
///                             },
///                             name: "CustDepLoc",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                         {
///                             attributeReferences: [
///                                 {
///                                     entity: "source/justSchema",
///                                     entityConnectionReference: {
///                                         connectionName: "amjaAdls03",
///                                         type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                     },
///                                     name: "CustName",
///                                 },
///                                 {
///                                     entity: "source/justSchema",
///                                     entityConnectionReference: {
///                                         connectionName: "amjaAdls03",
///                                         type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                     },
///                                     name: "CustDepName",
///                                 },
///                             ],
///                             expression: "concat(CustName, \" -> \", CustDepName)",
///                             functionName: "",
///                             name: "CustDepName",
///                             type: azure_native.datafactory.MappingType.Derived,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustId",
///                             },
///                             functionName: "",
///                             name: "CustId",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                         {
///                             attributeReference: {
///                                 entity: "source/justSchema",
///                                 entityConnectionReference: {
///                                     connectionName: "amjaAdls03",
///                                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                                 },
///                                 name: "CustName",
///                             },
///                             name: "CustName",
///                             type: azure_native.datafactory.MappingType.Direct,
///                         },
///                     ],
///                 },
///                 sourceConnectionReference: {
///                     connectionName: "amjaAdls03",
///                     type: azure_native.datafactory.ConnectionType.Linkedservicetype,
///                 },
///                 sourceEntityName: "source/justSchema",
///                 targetEntityName: "dbo.justSchema",
///             },
///         ],
///         relationships: [],
///         targetEntities: [
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "employee",
///                     },
///                 ],
///                 name: "dbo.employee",
///                 schema: [],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "justSchema",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: true,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: true,
///                     },
///                 ],
///                 name: "dbo.justSchema",
///                 schema: [],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "customer",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                 ],
///                 name: "dbo.customer",
///                 schema: [
///                     {
///                         dataType: "integer",
///                         name: "CustId",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustAddres",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustDeptName",
///                     },
///                     {
///                         dataType: "string",
///                         name: "CustEmail",
///                     },
///                 ],
///             },
///             {
///                 dslConnectorProperties: [
///                     {
///                         name: "schemaName",
///                         value: "dbo",
///                     },
///                     {
///                         name: "tableName",
///                         value: "data_source_table",
///                     },
///                     {
///                         name: "allowSchemaDrift",
///                         value: false,
///                     },
///                     {
///                         name: "inferDriftedColumnTypes",
///                         value: false,
///                     },
///                     {
///                         name: "defaultToUpsert",
///                         value: false,
///                     },
///                 ],
///                 name: "dbo.data_source_table",
///                 schema: [
///                     {
///                         dataType: "integer",
///                         name: "PersonID",
///                     },
///                     {
///                         dataType: "string",
///                         name: "Name",
///                     },
///                     {
///                         dataType: "timestamp",
///                         name: "LastModifytime",
///                     },
///                 ],
///             },
///         ],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// change_data_capture = azure_native.datafactory.ChangeDataCapture("changeDataCapture",
///     allow_v_net_override=False,
///     change_data_capture_name="exampleChangeDataCapture",
///     description="Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database. Updating table mappings.",
///     factory_name="exampleFactoryName",
///     policy={
///         "mode": "Microbatch",
///         "recurrence": {
///             "frequency": azure_native.datafactory.FrequencyType.MINUTE,
///             "interval": 15,
///         },
///     },
///     resource_group_name="exampleResourceGroup",
///     source_connections_info=[{
///         "connection": {
///             "common_dsl_connector_properties": [
///                 {
///                     "name": "allowSchemaDrift",
///                     "value": True,
///                 },
///                 {
///                     "name": "inferDriftedColumnTypes",
///                     "value": True,
///                 },
///                 {
///                     "name": "format",
///                     "value": "delimited",
///                 },
///                 {
///                     "name": "dateFormats",
///                     "value": [
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     "name": "timestampFormats",
///                     "value": [
///                         "yyyyMMddHHmm",
///                         "yyyyMMdd HHmm",
///                         "yyyyMMddHHmmss",
///                         "yyyyMMdd HHmmss",
///                         "dd-MM-yyyy HH:mm:ss",
///                         "dd-MM-yyyy HH:mm",
///                         "yyyy-M-d H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s\\'Z\\'",
///                         "yyyy-M-d\\'T\\'H:m:s",
///                         "yyyy-MM-dd\\'T\\'HH:mm:ss",
///                         "yyyy-MM-dd HH:mm:ss",
///                         "yyyy-MM-dd HH:mm",
///                         "yyyy.MM.dd HH:mm:ss",
///                         "MM/dd/yyyy HH:mm:ss",
///                         "M/d/yyyy H:m:s",
///                         "yyyy/MM/dd HH:mm:ss",
///                         "yyyy/M/d H:m:s",
///                         "dd MMM yyyy HH:mm:ss",
///                         "dd MMMM yyyy HH:mm:ss",
///                         "d MMM yyyy H:m:s",
///                         "d MMMM yyyy H:m:s",
///                         "d-M-yyyy H:m:s",
///                         "d-M-yyyy H:m",
///                         "yyyy-M-d H:m",
///                         "MM/dd/yyyy HH:mm",
///                         "M/d/yyyy H:m",
///                         "yyyy/MM/dd HH:mm",
///                         "yyyy/M/d H:m",
///                         "dd MMMM yyyy HH:mm",
///                         "dd MMM yyyy HH:mm",
///                         "d MMMM yyyy H:m",
///                         "d MMM yyyy H:m",
///                         "MM-dd-yyyy hh:mm:ss a",
///                         "MM-dd-yyyy HH:mm:ss",
///                         "MM/dd/yyyy hh:mm:ss a",
///                         "yyyy.MM.dd hh:mm:ss a",
///                         "MM/dd/yyyy",
///                         "dd/MM/yyyy",
///                         "yyyy/MM/dd",
///                         "MM-dd-yyyy",
///                         "dd-MM-yyyy",
///                         "yyyy-MM-dd",
///                         "dd.MM.yyyy",
///                         "MM.dd.yyyy",
///                         "yyyy.MM.dd",
///                     ],
///                 },
///                 {
///                     "name": "enableCdc",
///                     "value": True,
///                 },
///                 {
///                     "name": "skipInitialLoad",
///                     "value": True,
///                 },
///                 {
///                     "name": "columnNamesAsHeader",
///                     "value": True,
///                 },
///                 {
///                     "name": "columnDelimiter",
///                     "value": ",",
///                 },
///                 {
///                     "name": "escapeChar",
///                     "value": "\\\\",
///                 },
///                 {
///                     "name": "quoteChar",
///                     "value": "\\\"",
///                 },
///             ],
///             "is_inline_dataset": True,
///             "linked_service": {
///                 "reference_name": "amjaAdls03",
///                 "type": azure_native.datafactory.Type.LINKED_SERVICE_REFERENCE,
///             },
///             "linked_service_type": "AzureBlobFS",
///             "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///         },
///         "source_entities": [
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "source",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "source",
///                     },
///                     {
///                         "name": "folderPath",
///                         "value": "customer",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "source/customer",
///                 "schema": [
///                     {
///                         "data_type": "short",
///                         "name": "CustId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustAddres",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepLoc",
///                     },
///                 ],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "source",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "source",
///                     },
///                     {
///                         "name": "folderPath",
///                         "value": "employee",
///                     },
///                 ],
///                 "name": "source/employee",
///                 "schema": [],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "lookup",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "lookup",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "lookup",
///                 "schema": [
///                     {
///                         "data_type": "short",
///                         "name": "EmpId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "EmpName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "HomeAddress",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "OfficeAddress",
///                     },
///                     {
///                         "data_type": "integer",
///                         "name": "EmpPhoneNumber",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "DepName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "DepLoc",
///                     },
///                     {
///                         "data_type": "double",
///                         "name": "DecimalCol",
///                     },
///                 ],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "container",
///                         "value": "source",
///                     },
///                     {
///                         "name": "fileSystem",
///                         "value": "source",
///                     },
///                     {
///                         "name": "folderPath",
///                         "value": "justSchema",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "source/justSchema",
///                 "schema": [
///                     {
///                         "data_type": "string",
///                         "name": "CustId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustAddres",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDepLoc",
///                     },
///                 ],
///             },
///         ],
///     }],
///     status="Stopped",
///     target_connections_info=[{
///         "connection": {
///             "common_dsl_connector_properties": [
///                 {
///                     "name": "allowSchemaDrift",
///                     "value": True,
///                 },
///                 {
///                     "name": "inferDriftedColumnTypes",
///                     "value": True,
///                 },
///                 {
///                     "name": "format",
///                     "value": "table",
///                 },
///                 {
///                     "name": "store",
///                     "value": "sqlserver",
///                 },
///                 {
///                     "name": "databaseType",
///                     "value": "databaseType",
///                 },
///                 {
///                     "name": "database",
///                     "value": "database",
///                 },
///                 {
///                     "name": "deletable",
///                     "value": False,
///                 },
///                 {
///                     "name": "insertable",
///                     "value": True,
///                 },
///                 {
///                     "name": "updateable",
///                     "value": False,
///                 },
///                 {
///                     "name": "upsertable",
///                     "value": False,
///                 },
///                 {
///                     "name": "skipDuplicateMapInputs",
///                     "value": True,
///                 },
///                 {
///                     "name": "skipDuplicateMapOutputs",
///                     "value": True,
///                 },
///             ],
///             "is_inline_dataset": True,
///             "linked_service": {
///                 "reference_name": "amjaSql",
///                 "type": azure_native.datafactory.Type.LINKED_SERVICE_REFERENCE,
///             },
///             "linked_service_type": "AzureSqlDatabase",
///             "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///         },
///         "data_mapper_mappings": [
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [
///                         {
///                             "attribute_references": [{
///                                 "entity": "source/customer",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustAddres",
///                             }],
///                             "expression": "trim(CustAddres)",
///                             "function_name": "trim",
///                             "name": "CustAddres",
///                             "type": azure_native.datafactory.MappingType.DERIVED,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/customer",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustDepName",
///                             },
///                             "function_name": "",
///                             "name": "CustDeptName",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/customer",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustName",
///                             },
///                             "function_name": "",
///                             "name": "CustEmail",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/customer",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustId",
///                             },
///                             "function_name": "",
///                             "name": "CustId",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/customer",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustName",
///                             },
///                             "function_name": "",
///                             "name": "CustName",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                     ],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "source/customer",
///                 "target_entity_name": "dbo.customer",
///             },
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [
///                         {
///                             "attribute_references": [{
///                                 "entity": "lookup",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "EmpName",
///                             }],
///                             "expression": "upper(EmpName)",
///                             "function_name": "upper",
///                             "name": "Name",
///                             "type": azure_native.datafactory.MappingType.DERIVED,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "lookup",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "EmpId",
///                             },
///                             "function_name": "",
///                             "name": "PersonID",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                     ],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "lookup",
///                 "target_entity_name": "dbo.data_source_table",
///             },
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "source/employee",
///                 "target_entity_name": "dbo.employee",
///             },
///             {
///                 "attribute_mapping_info": {
///                     "attribute_mappings": [
///                         {
///                             "attribute_references": [{
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustAddres",
///                             }],
///                             "expression": "trim(CustAddres)",
///                             "function_name": "trim",
///                             "name": "CustAddres",
///                             "type": azure_native.datafactory.MappingType.DERIVED,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustDepLoc",
///                             },
///                             "name": "CustDepLoc",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                         {
///                             "attribute_references": [
///                                 {
///                                     "entity": "source/justSchema",
///                                     "entity_connection_reference": {
///                                         "connection_name": "amjaAdls03",
///                                         "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                     },
///                                     "name": "CustName",
///                                 },
///                                 {
///                                     "entity": "source/justSchema",
///                                     "entity_connection_reference": {
///                                         "connection_name": "amjaAdls03",
///                                         "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                     },
///                                     "name": "CustDepName",
///                                 },
///                             ],
///                             "expression": "concat(CustName, \" -> \", CustDepName)",
///                             "function_name": "",
///                             "name": "CustDepName",
///                             "type": azure_native.datafactory.MappingType.DERIVED,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustId",
///                             },
///                             "function_name": "",
///                             "name": "CustId",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                         {
///                             "attribute_reference": {
///                                 "entity": "source/justSchema",
///                                 "entity_connection_reference": {
///                                     "connection_name": "amjaAdls03",
///                                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                                 },
///                                 "name": "CustName",
///                             },
///                             "name": "CustName",
///                             "type": azure_native.datafactory.MappingType.DIRECT,
///                         },
///                     ],
///                 },
///                 "source_connection_reference": {
///                     "connection_name": "amjaAdls03",
///                     "type": azure_native.datafactory.ConnectionType.LINKEDSERVICETYPE,
///                 },
///                 "source_entity_name": "source/justSchema",
///                 "target_entity_name": "dbo.justSchema",
///             },
///         ],
///         "relationships": [],
///         "target_entities": [
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "employee",
///                     },
///                 ],
///                 "name": "dbo.employee",
///                 "schema": [],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "justSchema",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": True,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": True,
///                     },
///                 ],
///                 "name": "dbo.justSchema",
///                 "schema": [],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "customer",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                 ],
///                 "name": "dbo.customer",
///                 "schema": [
///                     {
///                         "data_type": "integer",
///                         "name": "CustId",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustAddres",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustDeptName",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "CustEmail",
///                     },
///                 ],
///             },
///             {
///                 "dsl_connector_properties": [
///                     {
///                         "name": "schemaName",
///                         "value": "dbo",
///                     },
///                     {
///                         "name": "tableName",
///                         "value": "data_source_table",
///                     },
///                     {
///                         "name": "allowSchemaDrift",
///                         "value": False,
///                     },
///                     {
///                         "name": "inferDriftedColumnTypes",
///                         "value": False,
///                     },
///                     {
///                         "name": "defaultToUpsert",
///                         "value": False,
///                     },
///                 ],
///                 "name": "dbo.data_source_table",
///                 "schema": [
///                     {
///                         "data_type": "integer",
///                         "name": "PersonID",
///                     },
///                     {
///                         "data_type": "string",
///                         "name": "Name",
///                     },
///                     {
///                         "data_type": "timestamp",
///                         "name": "LastModifytime",
///                     },
///                 ],
///             },
///         ],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   changeDataCapture:
///     type: azure-native:datafactory:ChangeDataCapture
///     properties:
///       allowVNetOverride: false
///       changeDataCaptureName: exampleChangeDataCapture
///       description: Sample demo change data capture to transfer data from delimited (csv) to Azure SQL Database. Updating table mappings.
///       factoryName: exampleFactoryName
///       policy:
///         mode: Microbatch
///         recurrence:
///           frequency: Minute
///           interval: 15
///       resourceGroupName: exampleResourceGroup
///       sourceConnectionsInfo:
///         - connection:
///             commonDslConnectorProperties:
///               - name: allowSchemaDrift
///                 value: true
///               - name: inferDriftedColumnTypes
///                 value: true
///               - name: format
///                 value: delimited
///               - name: dateFormats
///                 value:
///                   - MM/dd/yyyy
///                   - dd/MM/yyyy
///                   - yyyy/MM/dd
///                   - MM-dd-yyyy
///                   - dd-MM-yyyy
///                   - yyyy-MM-dd
///                   - dd.MM.yyyy
///                   - MM.dd.yyyy
///                   - yyyy.MM.dd
///               - name: timestampFormats
///                 value:
///                   - yyyyMMddHHmm
///                   - yyyyMMdd HHmm
///                   - yyyyMMddHHmmss
///                   - yyyyMMdd HHmmss
///                   - dd-MM-yyyy HH:mm:ss
///                   - dd-MM-yyyy HH:mm
///                   - yyyy-M-d H:m:s
///                   - yyyy-MM-dd\'T\'HH:mm:ss\'Z\'
///                   - yyyy-M-d\'T\'H:m:s\'Z\'
///                   - yyyy-M-d\'T\'H:m:s
///                   - yyyy-MM-dd\'T\'HH:mm:ss
///                   - yyyy-MM-dd HH:mm:ss
///                   - yyyy-MM-dd HH:mm
///                   - yyyy.MM.dd HH:mm:ss
///                   - MM/dd/yyyy HH:mm:ss
///                   - M/d/yyyy H:m:s
///                   - yyyy/MM/dd HH:mm:ss
///                   - yyyy/M/d H:m:s
///                   - dd MMM yyyy HH:mm:ss
///                   - dd MMMM yyyy HH:mm:ss
///                   - d MMM yyyy H:m:s
///                   - d MMMM yyyy H:m:s
///                   - d-M-yyyy H:m:s
///                   - d-M-yyyy H:m
///                   - yyyy-M-d H:m
///                   - MM/dd/yyyy HH:mm
///                   - M/d/yyyy H:m
///                   - yyyy/MM/dd HH:mm
///                   - yyyy/M/d H:m
///                   - dd MMMM yyyy HH:mm
///                   - dd MMM yyyy HH:mm
///                   - d MMMM yyyy H:m
///                   - d MMM yyyy H:m
///                   - MM-dd-yyyy hh:mm:ss a
///                   - MM-dd-yyyy HH:mm:ss
///                   - MM/dd/yyyy hh:mm:ss a
///                   - yyyy.MM.dd hh:mm:ss a
///                   - MM/dd/yyyy
///                   - dd/MM/yyyy
///                   - yyyy/MM/dd
///                   - MM-dd-yyyy
///                   - dd-MM-yyyy
///                   - yyyy-MM-dd
///                   - dd.MM.yyyy
///                   - MM.dd.yyyy
///                   - yyyy.MM.dd
///               - name: enableCdc
///                 value: true
///               - name: skipInitialLoad
///                 value: true
///               - name: columnNamesAsHeader
///                 value: true
///               - name: columnDelimiter
///                 value: ','
///               - name: escapeChar
///                 value: \\
///               - name: quoteChar
///                 value: \"
///             isInlineDataset: true
///             linkedService:
///               referenceName: amjaAdls03
///               type: LinkedServiceReference
///             linkedServiceType: AzureBlobFS
///             type: linkedservicetype
///           sourceEntities:
///             - dslConnectorProperties:
///                 - name: container
///                   value: source
///                 - name: fileSystem
///                   value: source
///                 - name: folderPath
///                   value: customer
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: source/customer
///               schema:
///                 - dataType: short
///                   name: CustId
///                 - dataType: string
///                   name: CustName
///                 - dataType: string
///                   name: CustAddres
///                 - dataType: string
///                   name: CustDepName
///                 - dataType: string
///                   name: CustDepLoc
///             - dslConnectorProperties:
///                 - name: container
///                   value: source
///                 - name: fileSystem
///                   value: source
///                 - name: folderPath
///                   value: employee
///               name: source/employee
///               schema: []
///             - dslConnectorProperties:
///                 - name: container
///                   value: lookup
///                 - name: fileSystem
///                   value: lookup
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: lookup
///               schema:
///                 - dataType: short
///                   name: EmpId
///                 - dataType: string
///                   name: EmpName
///                 - dataType: string
///                   name: HomeAddress
///                 - dataType: string
///                   name: OfficeAddress
///                 - dataType: integer
///                   name: EmpPhoneNumber
///                 - dataType: string
///                   name: DepName
///                 - dataType: string
///                   name: DepLoc
///                 - dataType: double
///                   name: DecimalCol
///             - dslConnectorProperties:
///                 - name: container
///                   value: source
///                 - name: fileSystem
///                   value: source
///                 - name: folderPath
///                   value: justSchema
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: source/justSchema
///               schema:
///                 - dataType: string
///                   name: CustId
///                 - dataType: string
///                   name: CustName
///                 - dataType: string
///                   name: CustAddres
///                 - dataType: string
///                   name: CustDepName
///                 - dataType: string
///                   name: CustDepLoc
///       status: Stopped
///       targetConnectionsInfo:
///         - connection:
///             commonDslConnectorProperties:
///               - name: allowSchemaDrift
///                 value: true
///               - name: inferDriftedColumnTypes
///                 value: true
///               - name: format
///                 value: table
///               - name: store
///                 value: sqlserver
///               - name: databaseType
///                 value: databaseType
///               - name: database
///                 value: database
///               - name: deletable
///                 value: false
///               - name: insertable
///                 value: true
///               - name: updateable
///                 value: false
///               - name: upsertable
///                 value: false
///               - name: skipDuplicateMapInputs
///                 value: true
///               - name: skipDuplicateMapOutputs
///                 value: true
///             isInlineDataset: true
///             linkedService:
///               referenceName: amjaSql
///               type: LinkedServiceReference
///             linkedServiceType: AzureSqlDatabase
///             type: linkedservicetype
///           dataMapperMappings:
///             - attributeMappingInfo:
///                 attributeMappings:
///                   - attributeReferences:
///                       - entity: source/customer
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: CustAddres
///                     expression: trim(CustAddres)
///                     functionName: trim
///                     name: CustAddres
///                     type: Derived
///                   - attributeReference:
///                       entity: source/customer
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustDepName
///                     functionName: ""
///                     name: CustDeptName
///                     type: Direct
///                   - attributeReference:
///                       entity: source/customer
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustName
///                     functionName: ""
///                     name: CustEmail
///                     type: Direct
///                   - attributeReference:
///                       entity: source/customer
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustId
///                     functionName: ""
///                     name: CustId
///                     type: Direct
///                   - attributeReference:
///                       entity: source/customer
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustName
///                     functionName: ""
///                     name: CustName
///                     type: Direct
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: source/customer
///               targetEntityName: dbo.customer
///             - attributeMappingInfo:
///                 attributeMappings:
///                   - attributeReferences:
///                       - entity: lookup
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: EmpName
///                     expression: upper(EmpName)
///                     functionName: upper
///                     name: Name
///                     type: Derived
///                   - attributeReference:
///                       entity: lookup
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: EmpId
///                     functionName: ""
///                     name: PersonID
///                     type: Direct
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: lookup
///               targetEntityName: dbo.data_source_table
///             - attributeMappingInfo:
///                 attributeMappings: []
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: source/employee
///               targetEntityName: dbo.employee
///             - attributeMappingInfo:
///                 attributeMappings:
///                   - attributeReferences:
///                       - entity: source/justSchema
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: CustAddres
///                     expression: trim(CustAddres)
///                     functionName: trim
///                     name: CustAddres
///                     type: Derived
///                   - attributeReference:
///                       entity: source/justSchema
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustDepLoc
///                     name: CustDepLoc
///                     type: Direct
///                   - attributeReferences:
///                       - entity: source/justSchema
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: CustName
///                       - entity: source/justSchema
///                         entityConnectionReference:
///                           connectionName: amjaAdls03
///                           type: linkedservicetype
///                         name: CustDepName
///                     expression: concat(CustName, " -> ", CustDepName)
///                     functionName: ""
///                     name: CustDepName
///                     type: Derived
///                   - attributeReference:
///                       entity: source/justSchema
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustId
///                     functionName: ""
///                     name: CustId
///                     type: Direct
///                   - attributeReference:
///                       entity: source/justSchema
///                       entityConnectionReference:
///                         connectionName: amjaAdls03
///                         type: linkedservicetype
///                       name: CustName
///                     name: CustName
///                     type: Direct
///               sourceConnectionReference:
///                 connectionName: amjaAdls03
///                 type: linkedservicetype
///               sourceEntityName: source/justSchema
///               targetEntityName: dbo.justSchema
///           relationships: []
///           targetEntities:
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: employee
///               name: dbo.employee
///               schema: []
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: justSchema
///                 - name: allowSchemaDrift
///                   value: true
///                 - name: inferDriftedColumnTypes
///                   value: true
///               name: dbo.justSchema
///               schema: []
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: customer
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///               name: dbo.customer
///               schema:
///                 - dataType: integer
///                   name: CustId
///                 - dataType: string
///                   name: CustName
///                 - dataType: string
///                   name: CustAddres
///                 - dataType: string
///                   name: CustDeptName
///                 - dataType: string
///                   name: CustEmail
///             - dslConnectorProperties:
///                 - name: schemaName
///                   value: dbo
///                 - name: tableName
///                   value: data_source_table
///                 - name: allowSchemaDrift
///                   value: false
///                 - name: inferDriftedColumnTypes
///                   value: false
///                 - name: defaultToUpsert
///                   value: false
///               name: dbo.data_source_table
///               schema:
///                 - dataType: integer
///                   name: PersonID
///                 - dataType: string
///                   name: Name
///                 - dataType: timestamp
///                   name: LastModifytime
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:datafactory:ChangeDataCapture exampleChangeDataCapture /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/adfcdcs/{changeDataCaptureName}
/// ```
class ChangeDataCapture extends pulumi.CustomResource {
  /// A boolean to determine if the vnet configuration needs to be overwritten.
  late final pulumi.Output<bool?> allowVNetOverride;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the change data capture.
  late final pulumi.Output<String?> description;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The folder that this CDC is in. If not specified, CDC will appear at the root level.
  late final pulumi.Output<ChangeDataCaptureFolderResponse?> folder;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// CDC policy
  late final pulumi.Output<MapperPolicyResponse> policy;
  /// List of sources connections that can be used as sources in the CDC.
  late final pulumi.Output<List<MapperSourceConnectionsInfoResponse>> sourceConnectionsInfo;
  /// Status of the CDC as to if it is running or stopped.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// List of target connections that can be used as sources in the CDC.
  late final pulumi.Output<List<MapperTargetConnectionsInfoResponse>> targetConnectionsInfo;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ChangeDataCapture].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChangeDataCapture]. {@macro pulumi_datafactory_change_data_capture_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChangeDataCapture(
    String name, {
    ChangeDataCaptureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:ChangeDataCapture',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowVNetOverride = registerOutput<bool?>('allowVNetOverride');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    folder = registerOutput<ChangeDataCaptureFolderResponse?>('folder', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChangeDataCaptureFolderResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policy = registerOutput<MapperPolicyResponse>('policy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MapperPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceConnectionsInfo = registerOutput<List<MapperSourceConnectionsInfoResponse>>('sourceConnectionsInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MapperSourceConnectionsInfoResponse>(guardedValue, (value) => MapperSourceConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetConnectionsInfo = registerOutput<List<MapperTargetConnectionsInfoResponse>>('targetConnectionsInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MapperTargetConnectionsInfoResponse>(guardedValue, (value) => MapperTargetConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ChangeDataCapture] resource.
  ChangeDataCapture.reference(String urn)
    : super(
        'azure-native:datafactory:ChangeDataCapture',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowVNetOverride = registerOutput<bool?>('allowVNetOverride');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    folder = registerOutput<ChangeDataCaptureFolderResponse?>('folder', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChangeDataCaptureFolderResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policy = registerOutput<MapperPolicyResponse>('policy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MapperPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceConnectionsInfo = registerOutput<List<MapperSourceConnectionsInfoResponse>>('sourceConnectionsInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MapperSourceConnectionsInfoResponse>(guardedValue, (value) => MapperSourceConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetConnectionsInfo = registerOutput<List<MapperTargetConnectionsInfoResponse>>('targetConnectionsInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MapperTargetConnectionsInfoResponse>(guardedValue, (value) => MapperTargetConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
