// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Invocation resources.
class InvocationState {
  /// The command content. You need to pay attention:
  /// - Specify the parameter 'EnableParameter = true' to enable the custom parameter feature in the command content.
  /// - Define custom parameters in the form of {{}} inclusion, and spaces and line breaks before and after the parameter name in '{{}}' are ignored.
  /// - The number of custom parameters cannot exceed 20.
  /// - Custom parameter names can a-zA-Z0-9 a combination of-_. Other characters are not supported. Parameter names are not case-sensitive.
  /// - A single custom parameter name cannot exceed 64 bytes.
  final pulumi.Input<String>? commandContent;
  /// Command ID
  final pulumi.Input<String>? commandId;
  /// The encoding of the script content. Value range:
  /// - PlainText: no encoding, using PlainText transmission.
  /// - Base64:Base64 encoding.
  ///
  /// Default value: PlainText. If you fill it randomly or wrongly, the value will be treated as a PlainText.
  final pulumi.Input<String>? contentEncoding;
  /// The command description.
  final pulumi.Input<String>? description;
  /// Whether custom parameters are included in the command.
  /// Default value: false.
  final pulumi.Input<bool>? enableParameter;
  /// The execution time of the scheduled execution command. Currently, three scheduled execution methods are supported: fixed interval execution (based on Rate expression), only once at a specified time, and timed execution based on clock (based on Cron expression).
  /// - Fixed time interval execution: Based on the Rate expression, the command is executed at the set time interval. Time intervals can be selected by seconds (s), minutes (m), hours (h), and days (d), which is suitable for scenarios where tasks are executed at fixed time intervals. The format is rate( ). If the execution is performed every 5 minutes, the format is rate(5m). Executing with a fixed time interval has the following limitations:
  /// - The set time interval is no more than 7 days and no less than 60 seconds, and must be greater than the timeout period of the scheduled task.
  /// - The execution interval is based only on a fixed frequency, independent of the time the task actually takes to execute. For example, if the command is executed every 5 minutes and the task takes 2 minutes to complete, the next round will be executed 3 minutes after the task is completed.
  /// - The task is not executed immediately when it is created. For example, if a command is executed every 5 minutes, the command is not executed immediately when a task is created, but is executed 5 minutes after the task is created.
  /// - Execute only once at the specified time: Execute the command once according to the set time zone and execution time point. The format is at(yyyy-MM-dd HH:mm:ss ), that is, at (year-month-day time: minute: Second ). If you do not specify a time zone, the default is the UTC time zone. Time zones can be in the following three formats: the full name of the time zone, such as Asia/Shanghai (China/Shanghai time), America/los_angles (United States/Los Angeles time), and so on. The offset of the time zone relative to Greenwich Mean Time: E.G. GMT +8:00 (East Zone 8), GMT-7 (West Zone 7), etc. When using the GMT format, the hour bit does not support adding leading zeros. Time zone abbreviation: Only UTC (Coordinated Universal Time) is supported.
  /// If it is specified to be executed once 13:15:30 June 06, 2022, China/Shanghai time, the format is at (Asia/Shanghai, 2022-06-06 13:15:30); If it is specified to be executed once 13:15:30 June 06, 2022, the format is at(2022-06-06 13:15:30 GMT-7:00).
  /// - Timing based on clock (based on Cron expression): Based on Cron expression, commands are executed according to the set timing task. The format is        , that is,  . In the specified time zone, calculate the execution time of the scheduled task based on the Cron expression and execute it. If no time zone is specified, the default time zone is the internal time zone of the scheduled task instance. For more information about Cron expressions, see Cron Expressions. Time zones support the following three forms:
  /// - Full time zone name: such as Asia/Shanghai (China/Shanghai time), America/los_angles (US/Los Angeles time), etc.
  /// - The offset of the time zone relative to Greenwich Mean Time: E.G. GMT +8:00 (East Zone 8), GMT-7 (West Zone 7), etc. When using the GMT format, the hour bit does not support adding leading zeros.
  /// - Time zone abbreviation: Only UTC (Coordinated Universal Time) is supported.
  ///
  /// For example, in China/Shanghai time, the command will be executed once every day at 10:15 am in 2022 in the format 0 15 10? * * 2022 Asia/Shanghai; In the eastern 8th District time, it will be executed every half hour from 10:00 a.m. to 11:30 a.m. every day in 2022, in the format of 0 0/30 10-11 * *? 2022 GMT +8:00; In UTC time, starting from 2022, it will be executed every 5 minutes from 14:00 P.M. to 14:55 p. M. Every two years in October, in the format of 0 0/5 14*10? 2022/2 UTC.
  final pulumi.Input<String>? frequency;
  /// The bootstrapper for script execution. The length cannot exceed 1KB.
  final pulumi.Input<String>? launcher;
  /// The command name.
  final pulumi.Input<String>? name;
  /// A list of nodes.
  final pulumi.Input<List<String>>? nodeIdLists;
  /// When the command contains custom parameters, the key-value pair of the custom parameters passed in when the command is executed. For example, if the command content is 'echo {{name}}', the key-value pair'{"name":"Jack"}'can be passed through the 'Parameter' parameter'. The custom parameter will automatically replace the variable value 'name' to get a new command that actually executes 'echo Jack '.
  ///
  /// The number of custom parameters ranges from 0 to 10, and you need to pay attention:
  /// - The key is not allowed to be an empty string and supports a maximum of 64 characters.
  /// - The value is allowed to be an empty string.
  /// - After the custom parameters and the original command content are encoded in Base64, if the command is saved, the size of the command content after Base64 encoding cannot exceed 18KB. If the command is not saved, the size of the command content after Base64 encoding cannot exceed 24KB. You can set whether to keep the command through 'KeepCommand.
  /// - The set of custom parameter names must be a subset of the parameter set defined when the command is created. For parameters that are not passed in, you can use an empty string instead.
  ///
  /// The default value is empty, which means that the parameter is unset and the custom parameter is disabled.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Sets the way the command is executed. Value range:
  /// - Once: Execute the command immediately.
  /// - Period: executes the command regularly. When the value of this parameter is 'Period', the 'Frequency' parameter must also be specified.
  /// - NextRebootOnly: Automatically execute the command when the instance is next started.
  /// - EveryReboot: The command is automatically executed every time the instance is started.
  ///
  /// Default:
  /// - When the'frequency' parameter is not specified, the default value is'once '.
  /// - When the'frequency' parameter is specified, regardless of whether the parameter value has been set or not, it will be processed according to'period.
  final pulumi.Input<String>? repeatMode;
  /// The mode when the task is stopped (manually stopped or execution time-out interrupted). Possible values:
  /// Process: Stops the current script Process.
  /// ProcessTree: Stops the current process tree (the script process and the collection of all child processes it created)
  final pulumi.Input<String>? terminationMode;
  /// The timeout period for command execution. Unit: seconds. A timeout occurs when a command cannot be run due to a process, a missing module, or a missing cloud assistant Agent. After the timeout, the command process is forcibly terminated. Default value: 60.
  final pulumi.Input<int>? timeout;
  /// The name of the user who executed the command in the instance. The length must not exceed 255 characters.
  /// The instance of the Linux system. By default, the root user runs commands.
  final pulumi.Input<String>? username;
  /// You can customize the command execution path. The default path is as follows:
  /// Linux instance: the execution path is in the/home directory of the root user by default.
  final pulumi.Input<String>? workingDir;

  /// Creates a new [InvocationState].
  /// [commandContent] The command content. You need to pay attention:
  /// [commandId] Command ID
  /// [contentEncoding] The encoding of the script content. Value range:
  /// [description] The command description.
  /// [enableParameter] Whether custom parameters are included in the command.
  /// [frequency] The execution time of the scheduled execution command. Currently, three scheduled execution methods are supported: fixed interval execution (based on Rate expression), only once at a specified time, and timed execution based on clock (based on Cron expression).
  /// [launcher] The bootstrapper for script execution. The length cannot exceed 1KB.
  /// [name] The command name.
  /// [nodeIdLists] A list of nodes.
  /// [parameters] When the command contains custom parameters, the key-value pair of the custom parameters passed in when the command is executed. For example, if the command content is 'echo {{name}}', the key-value pair'{"name":"Jack"}'can be passed through the 'Parameter' parameter'. The custom parameter will automatically replace the variable value 'name' to get a new command that actually executes 'echo Jack '.
  /// [repeatMode] Sets the way the command is executed. Value range:
  /// [terminationMode] The mode when the task is stopped (manually stopped or execution time-out interrupted). Possible values:
  /// [timeout] The timeout period for command execution. Unit: seconds. A timeout occurs when a command cannot be run due to a process, a missing module, or a missing cloud assistant Agent. After the timeout, the command process is forcibly terminated. Default value: 60.
  /// [username] The name of the user who executed the command in the instance. The length must not exceed 255 characters.
  /// [workingDir] You can customize the command execution path. The default path is as follows:
  const InvocationState({
    this.commandContent,
    this.commandId,
    this.contentEncoding,
    this.description,
    this.enableParameter,
    this.frequency,
    this.launcher,
    this.name,
    this.nodeIdLists,
    this.parameters,
    this.repeatMode,
    this.terminationMode,
    this.timeout,
    this.username,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandContent': ?commandContent,
      'commandId': ?commandId,
      'contentEncoding': ?contentEncoding,
      'description': ?description,
      'enableParameter': ?enableParameter,
      'frequency': ?frequency,
      'launcher': ?launcher,
      'name': ?name,
      'nodeIdLists': ?nodeIdLists,
      'parameters': ?parameters,
      'repeatMode': ?repeatMode,
      'terminationMode': ?terminationMode,
      'timeout': ?timeout,
      'username': ?username,
      'workingDir': ?workingDir,
    };
  }

  factory InvocationState.fromMap(Map<String, dynamic> map) {
    return InvocationState(
      commandContent: (() { final guardedValue = map['commandContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commandId: (() { final guardedValue = map['commandId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableParameter: (() { final guardedValue = map['enableParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launcher: (() { final guardedValue = map['launcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeIdLists: (() { final guardedValue = map['nodeIdLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      repeatMode: (() { final guardedValue = map['repeatMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminationMode: (() { final guardedValue = map['terminationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workingDir: (() { final guardedValue = map['workingDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

